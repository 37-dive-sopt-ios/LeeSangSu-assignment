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
    override var cellHeight: CGFloat { 220 }
    
    override func configureCell(_ cell: OneServingCell, item: OneServingItem) {
        cell.configure(item: item)
    }
    
    private let headerView = OneServingHeaderView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundView = GradientView(colors: [.gradientPurple, .white])
        contentView.addSubview(headerView)
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        headerView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview().offset(10)
            $0.height.equalTo(20)
        }
        collectionView.snp.makeConstraints {
            $0.top.equalTo(headerView.snp.bottom).offset(10)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
}
