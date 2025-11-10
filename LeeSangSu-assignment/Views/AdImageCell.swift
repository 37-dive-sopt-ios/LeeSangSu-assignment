//
//  AdImageCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/11/25.
//

import UIKit
import SnapKit

final class AdImageCell: UICollectionViewCell {
    private let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        imageView.contentMode = .scaleAspectFit
        contentView.addSubview(imageView)
        imageView.snp.makeConstraints { $0.edges.equalToSuperview() }
    }
}

extension AdImageCell {
    func configure(image: UIImage?) {
        imageView.image = image
    }
}
