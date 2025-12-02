//
//  BMartSectionCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/14/25.
//

import UIKit
import SnapKit

final class BmartSectionCell: UITableViewCell {

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "B마트"
        label.font = .boldSystemFont(ofSize: 18)
        label.textColor = .black
        return label
    }()

    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "전상품 쿠폰팩 + 60%특가 >"
        label.font = .boldSystemFont(ofSize: 14)
        label.textColor = .black
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundView = GradientView(
            colors: [.gradientMint, .white],
            start: .init(x: 0.5, y: 1.0),
            end: .init(x: 0.5, y: 0.5)
        )
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLayout() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)

        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(12)
            $0.leading.trailing.equalToSuperview().inset(16)
        }

        subtitleLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(4)
            $0.leading.trailing.equalTo(titleLabel)
            $0.bottom.equalToSuperview().inset(12)
        }
    }
}
