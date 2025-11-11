//
//  CategoryCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/11/25.
//

import UIKit
import SnapKit

final class CategoryCell: UICollectionViewCell {
    private let icon = UIImageView()
    private let title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupIcon()
        setupTitle()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupIcon() {
        contentView.addSubview(icon)
        icon.contentMode = .scaleAspectFit
        icon.layer.cornerRadius = 5
        icon.layer.borderWidth = 2
        icon.backgroundColor = .baeminGray200
    }
    
    private func setupTitle() {
        contentView.addSubview(title)
        title.font = .systemFont(ofSize: 10, weight: .semibold)
    }
    
    private func layout() {
        icon.snp.makeConstraints {
            $0.top.equalToSuperview().inset(5)
            $0.centerX.equalToSuperview()
            $0.size.equalTo(40)
        }
        title.snp.makeConstraints {
            $0.top.equalTo(icon.snp.bottom).offset(5)
            $0.centerX.equalToSuperview()
        }
    }
}

extension CategoryCell {
    func configure(image: UIImage?, text: String) {
        icon.image = image
        title.text = text
    }
}
