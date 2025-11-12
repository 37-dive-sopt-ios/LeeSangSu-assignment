//
//  OneServingHeaderView.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/12/25.
//

import UIKit
import SnapKit

final class OneServingHeaderView: UIView {
    private let titleLabel = UILabel()
    private let moreButton = UIButton(type: .system)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension OneServingHeaderView {
    private func setupSubviews() {
        setupTitleLabel()
        setupMoreButton()
    }
    
    private func setupTitleLabel() {
        addSubview(titleLabel)
        titleLabel.text = "우리 동네 한그릇 인기 랭킹"
        titleLabel.font = .systemFont(ofSize: 23, weight: .bold)
        titleLabel.textColor = .baeminBlack
    }
    
    private func setupMoreButton() {
        addSubview(moreButton)
        moreButton.setTitle("전체보기 >", for: .normal)
        moreButton.setTitleColor(.baeminGray700, for: .normal)
        moreButton.titleLabel?.font = .systemFont(ofSize: 14, weight: .medium)
    }
}

extension OneServingHeaderView {
    private func setupLayout() {
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16)
            $0.centerY.equalToSuperview()
        }
        
        moreButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(16)
            $0.centerY.equalToSuperview()
        }
    }
}
