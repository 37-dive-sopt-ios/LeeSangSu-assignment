//
//  LoginViewController2.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 12/2/25.
//

import UIKit
import Combine

final class LoginViewController2: UIViewController {
    
    private let loginView = LoginView()
    private let viewModel = LoginViewModel()
    private var cancellables = Set<AnyCancellable>()

    override func loadView() {
        view = loginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setAddTargets()
        bindInput()
        bindOutput()
    }
    
    private func bindInput() {
        loginView.emailField.textPublisher
            .compactMap { $0 }
            .assign(to: \.value, on: viewModel.emailSubject)
            .store(in: &cancellables)
        
        loginView.passwordField.textPublisher
            .compactMap { $0 }
            .assign(to: \.value, on: viewModel.passwordSubject)
            .store(in: &cancellables)
    }
        
    private func bindOutput() {
        viewModel.$isLoginButtonEnabled
            .receive(on: DispatchQueue.main)
            .sink { [weak self] isEnabled in
                self?.loginView.loginButton.isEnabled = isEnabled
                self?.loginView.loginButton.backgroundColor = isEnabled ? .baeminMint500 : .baeminGray200
            }
            .store(in: &cancellables)
            
        viewModel.$isLoginSuccess
            .dropFirst()
            .receive(on: DispatchQueue.main)
            .sink { [weak self] isSuccess in
                self?.handleLogin(isSuccess: isSuccess)
            }
            .store(in: &cancellables)
    }
    
    private func handleLogin(isSuccess: Bool) {
        if isSuccess {
            pushToWelcomeVC(email: self.viewModel.emailSubject.value)
        } else {
            showToast(message: "이메일 형식을 지켜주세요~")
        }
    }
    
    private func setAddTargets() {
        setEditingActions()
        setPwButtonAction()
        setLoginButtonAction()
    }
    
    private func setEditingActions() {
        [loginView.emailField, loginView.passwordField].forEach {
            $0.addTarget(self, action: #selector(textFieldEditingDidBegin(_:)), for: .editingDidBegin)
            $0.addTarget(self, action: #selector(textFieldEditingDidEnd(_:)), for: .editingDidEnd)
        }
    }
    
    @objc private func textFieldEditingDidBegin(_ sender: UITextField) {
        sender.layer.borderColor = UIColor.baeminBlack.cgColor
    }
    
    @objc private func textFieldEditingDidEnd(_ sender: UITextField) {
        sender.layer.borderColor = UIColor.baeminGray200.cgColor
    }
    
    private func setPwButtonAction() {
        loginView.passwordClearButton.addTarget(self, action: #selector(clearPassword), for: .touchUpInside)
        loginView.passwordToggleButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
    }
    
    @objc private func clearPassword() {
        loginView.passwordField.text = ""
        viewModel.passwordSubject.send("")
    }
    
    @objc private func togglePasswordVisibility() {
        loginView.passwordField.isSecureTextEntry.toggle()
    }
    
    private func setLoginButtonAction() {
        loginView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }

    @objc private func loginButtonTapped() {
        viewModel.loginActionSubject.send(())
    }
    
    private func pushToWelcomeVC(email: String) {
        let viewController = WelcomeViewController(email: email)
        viewController.delegate = self
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

extension LoginViewController2: WelcomeViewControllerDelegate {
    func resetLoginFields() {
        viewModel.resetFields()
    }
}
