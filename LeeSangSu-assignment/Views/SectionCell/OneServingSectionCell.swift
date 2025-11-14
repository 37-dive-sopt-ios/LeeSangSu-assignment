//
//  OneServingSectionCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/12/25.
//

import UIKit
import SnapKit

final class OneServingSectionCell: BaseHorizontalCell<OneServingItem, OneServingCell> {
    override var lineSpacing: CGFloat { 5 }
    override var interitemSpacing: CGFloat { 5 }
    override var cellWidth: CGFloat { 170 }
    override var cellHeight: CGFloat { 250 }
    
    override func configureCell(_ cell: OneServingCell, item: OneServingItem) {
        cell.configure(item: item)
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLayout() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
