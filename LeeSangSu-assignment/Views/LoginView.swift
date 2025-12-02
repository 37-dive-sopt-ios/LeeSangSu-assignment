//
//  LoginView.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 12/2/25.
//

import UIKit

final class LoginView: UIView {
        
    let emailField = UITextField()
    let passwordField = UITextField()
    let loginButton = UIButton()
    let findAccountButton = UIButton()
    
    let passwordToggleButton = UIButton()
    let passwordClearButton = UIButton()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setStyle()
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    private func setStyle() {
        backgroundColor = .white
        
        emailField.placeholder = "이메일 아이디"
        emailField.textColor = .label
        emailField.borderStyle = .none
        emailField.layer.cornerRadius = 5
        emailField.layer.borderWidth = 1
        emailField.layer.borderColor = UIColor.baeminGray200.cgColor
        emailField.clearButtonMode = .whileEditing
        emailField.addLeftPadding()
        
        passwordField.placeholder = "비밀번호"
        passwordField.borderStyle = .none
        passwordField.textColor = .label
        passwordField.layer.cornerRadius = 5
        passwordField.layer.borderWidth = 1
        passwordField.layer.borderColor = UIColor.baeminGray200.cgColor
        passwordField.isSecureTextEntry = true
        passwordField.addLeftPadding()
        
        passwordClearButton.setImage(UIImage(systemName: "xmark.circle.fill"), for: .normal)
        passwordClearButton.tintColor = .gray
        
        let imageName = passwordField.isSecureTextEntry ? "eye.fill" : "eye.slash.fill"
        passwordToggleButton.setImage(UIImage(systemName: imageName), for: .normal)
        passwordToggleButton.tintColor = .gray
        
        let stack = UIStackView(arrangedSubviews: [passwordClearButton, passwordToggleButton])
        stack.axis = .horizontal
        stack.spacing = 8
        stack.alignment = .center
        passwordField.rightView = stack
        passwordField.rightViewMode = .whileEditing
        
        loginButton.backgroundColor = .baeminGray200
        loginButton.setTitle("로그인", for: .normal)
        loginButton.layer.cornerRadius = 5
        loginButton.isEnabled = false
        
        findAccountButton.setTitle("계정 찾기 >", for: .normal)
        findAccountButton.setTitleColor(.black, for: .normal)
    }

    
    private func setUI() {
        addSubviews(
            emailField,
            passwordField,
            loginButton,
            findAccountButton
        )
    }
        
    private func setLayout() {
        emailField.anchor(
            top: safeAreaLayoutGuide.topAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 100, left: 20, bottom: 0, right: 20),
            height: 40
        )
        
        passwordField.anchor(
            top: emailField.bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 10, left: 20, bottom: 0, right: 20),
            height: 40
        )
        
        loginButton.anchor(
            top: passwordField.bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 20, left: 20, bottom: 0, right: 20),
            height: 40
        )
        
        findAccountButton.anchor(
            top: loginButton.bottomAnchor,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            padding: .init(top: 23, left: 20, bottom: 0, right: 20),
            height: 40
        )
    }
    
}
