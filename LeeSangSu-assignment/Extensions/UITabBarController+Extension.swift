//
//  UITabBarController+Extension.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/14/25.
//

import UIKit

extension UITabBarController {
    func makeTab(
        _ viewController: UIViewController,
        title: String,
        image: UIImage?,
        tag: Int
    ) -> UINavigationController {
        let vc = UINavigationController(rootViewController: viewController)
        vc.tabBarItem = UITabBarItem(title: title, image: image, tag: tag)
        return vc
    }
}
