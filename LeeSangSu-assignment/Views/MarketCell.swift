//
//  MarketCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/11/25.
//

import UIKit
import SnapKit

struct CategoryItem {
    let image: UIImage?
    let text: String
}

final class MarketCell: BaseHorizontalCell<CategoryItem, CategoryCell> {
    override var lineSpacing: CGFloat { 5 }
    override var interitemSpacing: CGFloat { 5 }
    override func configureCell(_ cell: CategoryCell, item: CategoryItem) {
        cell.configure(image: item.image, text: item.text)
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
