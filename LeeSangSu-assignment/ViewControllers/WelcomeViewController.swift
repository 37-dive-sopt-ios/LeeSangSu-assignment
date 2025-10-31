//
//  WelcomeViewController.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 10/31/25.
//

import UIKit
 
protocol WelcomeViewControllerDelegate: AnyObject {
    func resetLoginFields()
}

class WelcomeViewController: UIViewController {
    
    weak var delegate: WelcomeViewControllerDelegate?
    private let email: String
    private let imageView = UIImageView()
    private let greetingText = UILabel()
    private let backButton = UIButton()
    
    init(email: String) {
        self.email = email
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews()
        setupButtonActions()
        setupLayout()
    }
    
}

extension WelcomeViewController {
    
    private func setupSubviews() {
        setupImageView()
        setupGreetingText()
        setupBackButton()
    }
    
    private func setupImageView() {
        view.addSubview(imageView)
        imageView.image = UIImage(named: "cat")
        //imageView.contentMode = .scaleAspectFit
    }
    
    private func setupGreetingText() {
        view.addSubview(greetingText)
        greetingText.numberOfLines = 2
        greetingText.textAlignment = .center
        greetingText.text = "환영합니다\n\(email)님 반가워요!"
    }
    
    private func setupBackButton() {
        view.addSubview(backButton)
        backButton.backgroundColor = .baeminMint500
        backButton.setTitle("뒤로가기", for: .normal)
        backButton.layer.cornerRadius = 5
    }
    
}

extension WelcomeViewController {
    
    private func setupButtonActions() {
        backButton.addTarget(self, action: #selector(backToLoginButtonDidTap), for: .touchUpInside)
    }
    
    @objc private func backToLoginButtonDidTap() {
        if self.navigationController == nil {
            self.dismiss(animated: true)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
        delegate?.resetLoginFields()
    }
    
}

extension WelcomeViewController {
    
    private func setupLayout() {
        layoutImageView()
        layoutGreetingText()
        layoutBackButton()
    }
    
    private func layoutImageView() {
        imageView.anchor(
            top: view.safeAreaLayoutGuide.topAnchor,
            leading: view.leadingAnchor,
            trailing: view.trailingAnchor,
            padding: .init(top: 60, left: 0, bottom: 20, right: 0),
            height: 280
        )
    }
    
    private func layoutGreetingText() {
        greetingText.anchor(
            top: imageView.bottomAnchor,
            padding: .init(top: 20, left: 0, bottom: 0, right: 0),
            centerX: view.centerXAnchor
        )
    }
    
    private func layoutBackButton() {
        backButton.anchor(
            leading: view.leadingAnchor,
            bottom: view.safeAreaLayoutGuide.bottomAnchor,
            trailing: view.trailingAnchor,
            padding: .init(top: 0, left: 20, bottom: 20, right: 20)
        )
    }
    
}
