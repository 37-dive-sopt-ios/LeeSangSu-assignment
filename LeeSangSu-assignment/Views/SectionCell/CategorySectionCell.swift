//
//  CategorySectionCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/13/25.
//

import UIKit
import SnapKit

final class CategorySectionCell: BaseHorizontalCell<CategoryItem, CategoryItemCell> {
    override var lineSpacing: CGFloat { 10 }
    override var interitemSpacing: CGFloat { 10 }
    override var cellWidth: CGFloat {
        (collectionView.frame.width - (6 * lineSpacing)) / 5
    }
    override var cellHeight: CGFloat { cellWidth + 15 }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
        collectionView.isPagingEnabled = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func configureCell(_ cell: CategoryItemCell, item: CategoryItem) {
        cell.configure(image: item.image, text: item.text)
    }
    
    private func setupLayout() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
