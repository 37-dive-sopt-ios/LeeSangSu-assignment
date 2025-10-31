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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
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
        emailField.addLeftPadding()
        emailField.addRightPadding()
    }
    
    private func setupPasswordField() {
        view.addSubview(passwordField)
        passwordField.placeholder = "비밀번호"
        passwordField.borderStyle = .none
        passwordField.layer.cornerRadius = 5
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = UIColor.baeminGray200.cgColor
        passwordField.backgroundColor = .baeminWhite
        passwordField.addLeftPadding()
        passwordField.addRightPadding()
    }
    
    private func setupLoginButton() {
        view.addSubview(loginButton)
        loginButton.backgroundColor = .baeminGray200
        loginButton.setTitle("로그인", for: .normal)
        loginButton.layer.cornerRadius = 5
    }
    
    private func setupFindAccountButton() {
        view.addSubview(findAccountButton)
        findAccountButton.setTitle("계정 찾기 >", for: .normal)
        findAccountButton.setTitleColor(.black, for: .normal)
    }
    
}

extension LoginViewController {
    
    private func setupButtonActions() {
        [emailField, passwordField].forEach { tf in
            tf.addTarget(self, action: #selector(textFieldEditingDidBegin(_:)), for: .editingDidBegin)
            tf.addTarget(self, action: #selector(textFieldEditingDidEnd(_:)), for: .editingDidEnd)
            tf.addTarget(self, action:
                            #selector(textFieldEditingDidChange), for: .editingChanged)
        }
    }

    @objc private func textFieldEditingDidBegin(_ sender: UITextField) {
        sender.layer.borderColor = UIColor.baeminBlack.cgColor
    }

    @objc private func textFieldEditingDidEnd(_ sender: UITextField) {
        sender.layer.borderColor = UIColor.baeminGray200.cgColor
    }
    
    @objc private func textFieldEditingDidChange() {
        loginButton.isEnabled = !(emailField.text?.isEmpty ?? false) && !(passwordField.text?.isEmpty ?? false)
        loginButton.backgroundColor = loginButton.isEnabled ? .baeminMint500 : .baeminGray200
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
