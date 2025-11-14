//
//  OneServingCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/12/25.
//

import UIKit
import SnapKit

final class OneServingCell: UICollectionViewCell {
    private let thumbnailImageView = UIImageView()
    private let storeLabel = UILabel()
    private let ratingIcon = UIImageView(image: UIImage(systemName: "star.fill"))
    private let ratingLabel = UILabel()
    private let commentCountLabel = UILabel()
    private let menuLabel = UILabel()
    private let discountLabel = UILabel()
    private let priceLabel = UILabel()
    private let originalPriceLabel = UILabel()
    private let minimumPriceLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension OneServingCell {
    private func setupSubviews() {
        setupThumbnailImageView()
        setupStoreLabel()
        setupRatingIcon()
        setupRatingLabel()
        setupCommentCountLabel()
        setupMenuLabel()
        setupDiscountLabel()
        setupPriceLabel()
        setupOriginalPriceLabel()
        setupMinimumPriceLabel()
    }
    
    private func setupThumbnailImageView() {
        contentView.addSubview(thumbnailImageView)
        thumbnailImageView.contentMode = .scaleAspectFill
        thumbnailImageView.clipsToBounds = true
        thumbnailImageView.layer.cornerRadius = 8
    }
    
    private func setupStoreLabel() {
        contentView.addSubview(storeLabel)
        storeLabel.font = .systemFont(ofSize: 10)
        storeLabel.textColor = .darkGray
    }
    
    private func setupRatingIcon() {
        contentView.addSubview(ratingIcon)
        ratingIcon.tintColor = .systemYellow
        ratingIcon.contentMode = .scaleAspectFit
    }
    
    private func setupRatingLabel() {
        contentView.addSubview(ratingLabel)
        ratingLabel.font = .systemFont(ofSize: 11, weight: .medium)
        ratingLabel.textColor = .darkGray
    }
    
    private func setupCommentCountLabel() {
        contentView.addSubview(commentCountLabel)
        commentCountLabel.font = .systemFont(ofSize: 10)
        commentCountLabel.textColor = .darkGray
    }
    
    private func setupMenuLabel() {
        contentView.addSubview(menuLabel)
        menuLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        menuLabel.textColor = .black
        menuLabel.numberOfLines = 1
    }
    
    private func setupDiscountLabel() {
        contentView.addSubview(discountLabel)
        discountLabel.font = .systemFont(ofSize: 13, weight: .bold)
        discountLabel.textColor = .systemRed
    }
    
    private func setupPriceLabel() {
        contentView.addSubview(priceLabel)
        priceLabel.font = .systemFont(ofSize: 13, weight: .bold)
        priceLabel.textColor = .black
    }
    
    private func setupOriginalPriceLabel() {
        contentView.addSubview(originalPriceLabel)
        originalPriceLabel.font = .systemFont(ofSize: 11)
        originalPriceLabel.textColor = .lightGray
    }
    
    private func setupMinimumPriceLabel() {
        contentView.addSubview(minimumPriceLabel)
        minimumPriceLabel.font = .systemFont(ofSize: 15, weight: .bold)
        minimumPriceLabel.textColor = .purple
        minimumPriceLabel.text = "최소주문금액 없음"
    }
}

extension OneServingCell {
    private func setupLayout() {
        thumbnailImageView.snp.makeConstraints {
            $0.top.horizontalEdges.equalToSuperview()
            $0.height.equalTo(contentView.snp.width)
        }

        storeLabel.snp.makeConstraints {
            $0.top.equalTo(thumbnailImageView.snp.bottom).offset(6)
            $0.leading.equalToSuperview().inset(4)
        }

        ratingIcon.snp.makeConstraints {
            $0.centerY.equalTo(storeLabel)
            $0.leading.equalTo(storeLabel.snp.trailing).offset(4)
            $0.size.equalTo(11)
        }

        ratingLabel.snp.makeConstraints {
            $0.centerY.equalTo(storeLabel)
            $0.leading.equalTo(ratingIcon.snp.trailing).offset(2)
        }

        commentCountLabel.snp.makeConstraints {
            $0.centerY.equalTo(storeLabel)
            $0.leading.equalTo(ratingLabel.snp.trailing).offset(4)
        }

        menuLabel.snp.makeConstraints {
            $0.top.equalTo(storeLabel.snp.bottom).offset(4)
            $0.leading.trailing.equalToSuperview().inset(4)
        }

        discountLabel.snp.makeConstraints {
            $0.top.equalTo(menuLabel.snp.bottom).offset(4)
            $0.leading.equalToSuperview().inset(4)
        }

        priceLabel.snp.makeConstraints {
            $0.centerY.equalTo(discountLabel)
            $0.leading.equalTo(discountLabel.snp.trailing).offset(4)
        }

        originalPriceLabel.snp.makeConstraints {
            $0.top.equalTo(priceLabel.snp.bottom).offset(2)
            $0.leading.equalToSuperview().inset(4)
        }
        
        minimumPriceLabel.snp.makeConstraints {
            $0.top.equalTo(originalPriceLabel.snp.bottom).offset(4)
            $0.leading.equalToSuperview().inset(4)
        }
    }
}

extension OneServingCell {
    func configure(item: OneServingItem) {
        thumbnailImageView.image = item.image
        storeLabel.text = item.storeName
        ratingLabel.text = item.rating
        commentCountLabel.text = "(\(item.commentCount))"
        menuLabel.text = item.menuName
        discountLabel.text = item.discount
        priceLabel.text = item.discountedPrice
        originalPriceLabel.text = item.originalPrice
    }
}
