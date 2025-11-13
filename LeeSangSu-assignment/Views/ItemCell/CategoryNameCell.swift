//
//  CategoryNameCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/14/25.
//

import UIKit
import SnapKit

final class CategoryNameCell: UICollectionViewCell {
    private let nameLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        contentView.addSubview(nameLabel)
        nameLabel.contentMode = .scaleAspectFit
        nameLabel.snp.makeConstraints { $0.edges.equalToSuperview() }
    }
}

extension CategoryNameCell {
    func configure(name: String) {
        nameLabel.text = name
    }
}
