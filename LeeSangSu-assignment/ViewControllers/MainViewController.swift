//
//  MainViewController.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/14/25.
//

import UIKit

final class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //delegate = self
        setupTabs()
    }

    private func setupTabs() {
        let tabs: [(UIViewController, String, UIImage?)] = [
            (BaeminFeedViewController(), "홈", UIImage(systemName: "house")),
            (EmptyViewController(), "장보기/쇼핑", UIImage(systemName: "house")),
            (EmptyViewController(), "찜", UIImage(systemName: "house")),
            (EmptyViewController(), "주문내역", UIImage(systemName: "house")),
            (EmptyViewController(), "마이배민", UIImage(systemName: "house"))
        ]
        
        viewControllers = tabs.enumerated().map { index, tab in
            makeTab(tab.0, title: tab.1, image: tab.2, tag: index)
        }
    }
    
}
