//
//  LoginViewModel.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 12/2/25.
//

import Foundation
import Combine

final class LoginViewModel {

    let emailSubject = CurrentValueSubject<String, Never>("")
    let passwordSubject = CurrentValueSubject<String, Never>("")
    let loginActionSubject = PassthroughSubject<Void, Never>()
    
    @Published private(set) var isLoginButtonEnabled: Bool = false
    @Published private(set) var isLoginSuccess: Bool = false
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        Publishers.CombineLatest(emailSubject, passwordSubject)
            .map { email, password in
                return !email.isEmpty && !password.isEmpty
            }
            .assign(to: \.isLoginButtonEnabled, on: self)
            .store(in: &cancellables)
            
        loginActionSubject
            .sink { [weak self] _ in
                self?.handleLogin()
            }
            .store(in: &cancellables)
    }
    
    private func handleLogin() {
        let email = emailSubject.value
        
        guard EmailUtils.isValidFormat(email) else {
            isLoginSuccess = false
            return
        }
        isLoginSuccess = true
    }

    func resetFields() {
        emailSubject.send("")
        passwordSubject.send("")
        isLoginSuccess = false
    }
}
