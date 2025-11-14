//
//  AdvertisementSectionCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/10/25.
//

import UIKit
import SnapKit

final class AdvertisementSectionCell: BaseHorizontalCell<UIImage?, AdImageCell> {
    override var cellWidth: CGFloat { collectionView.frame.width }
    override var cellHeight: CGFloat { collectionView.frame.height }
    override func configureCell(_ cell: AdImageCell, item: UIImage?) {
        cell.configure(image: item)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCollectionView()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupCollectionView() {
        collectionView.isPagingEnabled = true
    }
    
    private func setupLayout() {
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
