//
//  EmailUtils.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 10/31/25.
//

import Foundation

enum EmailUtils {
    
    static func isValidFormat(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: email)
    }
    
}
