//
//  CategoryNameCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/14/25.
//

import UIKit
import SnapKit

final class CategoryNameCell: UICollectionViewCell {
        
    private let titleLabel = UILabel()
    
    private let underlineView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTitleLabel()
        setupUnderLineView()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTitleLabel() {
        contentView.addSubview(titleLabel)
        titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        titleLabel.textAlignment = .center
    }
    
    private func setupUnderLineView() {
        contentView.addSubview(underlineView)
        underlineView.backgroundColor = .black
        underlineView.layer.cornerRadius = 1
        underlineView.isHidden = true
    }
    
    private func layout() {
        titleLabel.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        underlineView.snp.makeConstraints {
            $0.height.equalTo(2)
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
}


extension CategoryNameCell {
    func configure(title: String, selected: Bool) {
        titleLabel.text = title
        titleLabel.textColor = selected ? .black : .lightGray
        underlineView.isHidden = !selected
    }
}
