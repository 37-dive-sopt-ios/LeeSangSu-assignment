//
//  UITableView+Extension.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/14/25.
//

import UIKit

extension UITableView {
    func register(_ cells: UITableViewCell.Type...) {
        cells.forEach {
            self.register($0, forCellReuseIdentifier: $0.identifier)
        }
    }
}
