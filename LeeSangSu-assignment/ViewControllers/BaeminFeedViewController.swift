//
//  BaeminFeedViewController.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/10/25.
//

import UIKit

final class BaeminFeedViewController: UIViewController {
    
    private let rootView = BaeminFeedView()
    
    override func loadView() {
        self.view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
