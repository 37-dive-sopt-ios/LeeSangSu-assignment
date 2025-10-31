//
//  LoginViewController.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 10/31/25.
//

import UIKit

final class LoginViewController: UIViewController {
    
    let emailField = UITextField()
    let passwordField = UITextField()
    let loginButton = UIButton()
    let findAccountButton = UIButton()
    
    private let passwordToggleButton = UIButton(type: .system)
    private let passwordClearButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setup()
    }
    
    private func setup() {
        setupSubviews()
        setupButtonActions()
        setupLayout()
    }
    
}

extension LoginViewController {
    
    private func setupSubviews() {
        setupEmailField()
        setupPasswordField()
        setupLoginButton()
        setupFindAccountButton()
    }
    
    private func setupEmailField() {
        view.addSubview(emailField)
        emailField.placeholder = "이메일 아이디"
        emailField.borderStyle = .none
        emailField.layer.cornerRadius = 5
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.baeminGray200.cgColor
        emailField.backgroundColor = .baeminWhite
        emailField.clearButtonMode = .whileEditing
        emailField.addLeftPadding()
    }
    
    private func setupPasswordField() {
        view.addSubview(passwordField)
        passwordField.placeholder = "비밀번호"
        passwordField.borderStyle = .none
        passwordField.layer.cornerRadius = 5
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = UIColor.baeminGray200.cgColor
        passwordField.backgroundColor = .baeminWhite
        passwordField.isSecureTextEntry = true
        passwordField.addLeftPadding()
        
        setupPwClearButton()
        setupPwToggleButton()
        
        let stack = UIStackView(arrangedSubviews: [passwordClearButton, passwordToggleButton])
        stack.axis = .horizontal
        stack.spacing = 8
        stack.alignment = .center
        
        passwordField.rightView = stack
        passwordField.rightViewMode = .whileEditing
    }
    
    private func setupPwClearButton() {
        passwordClearButton.setImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        passwordClearButton.tintColor = .gray
    }
    
    private func setupPwToggleButton() {
        passwordToggleButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        passwordToggleButton.tintColor = .gray
    }

    private func setupLoginButton() {
        view.addSubview(loginButton)
        loginButton.backgroundColor = .baeminGray200
        loginButton.setTitle("로그인", for: .normal)
        loginButton.layer.cornerRadius = 5
        loginButton.isEnabled = false
    }
    
    private func setupFindAccountButton() {
        view.addSubview(findAccountButton)
        findAccountButton.setTitle("계정 찾기 >", for: .normal)
        findAccountButton.setTitleColor(.black, for: .normal)
    }
    
}

extension LoginViewController {
    
    private func setupButtonActions() {
        [emailField, passwordField].forEach {
            $0.addTarget(self, action: #selector(textFieldEditingDidBegin(_:)), for: .editingDidBegin)
            $0.addTarget(self, action: #selector(textFieldEditingDidEnd(_:)), for: .editingDidEnd)
            $0.addTarget(self, action: #selector(textFieldEditingDidChange), for: .editingChanged)
        }
        passwordClearButton.addTarget(self, action: #selector(clearPassword), for: .touchUpInside)
        passwordToggleButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(pushToWelcomeVC), for: .touchUpInside)
    }
    
    @objc private func pushToWelcomeVC() {
        let viewController = ViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @objc private func textFieldEditingDidBegin(_ sender: UITextField) {
        sender.layer.borderColor = UIColor.baeminBlack.cgColor
    }

    @objc private func textFieldEditingDidEnd(_ sender: UITextField) {
        sender.layer.borderColor = UIColor.baeminGray200.cgColor
    }
    
    @objc private func textFieldEditingDidChange() {
        loginButton.isEnabled = !(emailField.text?.isEmpty ?? true) && !(passwordField.text?.isEmpty ?? true)
        loginButton.backgroundColor = loginButton.isEnabled ? .baeminMint500 : .baeminGray200
    }
    
    @objc private func clearPassword() {
        passwordField.text = ""
        textFieldEditingDidChange()
    }
    
    @objc private func togglePasswordVisibility() {
        passwordField.isSecureTextEntry.toggle()
        let imageName = passwordField.isSecureTextEntry ? "eye.fill" : "eye.slash.fill"
        passwordToggleButton.setImage(UIImage(systemName: imageName), for: .normal)
    }

}

extension LoginViewController {
    
    private func setupLayout() {
        layoutEmailField()
        layoutPasswordField()
        layoutLoginButton()
        layoutFindAccountButton()
    }
    
    private func layoutEmailField() {
        emailField.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            padding: .init(top: 100, left: 20, bottom: 0, right: 20),
            height: 40
        )
    }
    
    private func layoutPasswordField() {
        passwordField.anchor(
            top: emailField.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            padding: .init(top: 10, left: 20, bottom: 0, right: 20),
            height: 40
        )
    }
    
    private func layoutLoginButton() {
        loginButton.anchor(
            top: passwordField.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 0, right: 20),
            height: 40
        )
    }
    
    private func layoutFindAccountButton() {
        findAccountButton.anchor(
            top: loginButton.bottomAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            padding: .init(top: 23, left: 20, bottom: 0, right: 20),
            height: 40
        )
    }
    
}

#Preview { LoginViewController() }
