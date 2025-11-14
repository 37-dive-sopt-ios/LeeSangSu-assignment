//
//  BaeminHeaderView.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/13/25.
//

import UIKit
import SnapKit

final class BaeminHeaderView: UIView {
    private let addressButton = UIButton()
    private let benefitButton = UIButton()
    private let bellButton = UIButton()
    private let cartButton = UIButton()
    private let searchTextField = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension BaeminHeaderView {
    
    private func setupSubviews() {
        setupAddressButton()
        setupButtons()
        setupTextField()
    }
    
    private func setupAddressButton() {
        addSubview(addressButton)
        addressButton.setTitle("우리집 ▼", for: .normal)
        addressButton.setTitleColor(.black, for: .normal)
        addressButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
    }
    
    private func setupButtons() {
        addSubviews(benefitButton, bellButton, cartButton)
        benefitButton.setImage(UIImage(named: "benefit"), for: .normal)
        bellButton.setImage(UIImage(named: "bell"), for: .normal)
        cartButton.setImage(UIImage(named: "cart"), for: .normal)
    }
    
    private func setupTextField() {
        addSubview(searchTextField)
        searchTextField.placeholder = "찾아라! 맛있는 음식과 맛집"
        searchTextField.layer.cornerRadius = 18
        searchTextField.layer.borderWidth = 1
        searchTextField.layer.borderColor = UIColor.black.cgColor
        searchTextField.backgroundColor = .systemGray6
        searchTextField.addLeftPadding(15)
        searchTextField.setRightIcon(image: UIImage(systemName: "magnifyingglass")) {
            print("검색창 버튼 클릭")
        }
    }
}

extension BaeminHeaderView {
    private func setupLayout() {
        addressButton.snp.makeConstraints {
            $0.top.equalToSuperview().inset(Constants.verticalInset)
            $0.leading.equalToSuperview().inset(Constants.horizontalInset)
        }
        
        cartButton.snp.makeConstraints {
            $0.centerY.equalTo(addressButton)
            $0.trailing.equalToSuperview().inset(Constants.horizontalInset)
            $0.size.equalTo(Constants.iconSize)
        }
        
        bellButton.snp.makeConstraints {
            $0.centerY.equalTo(cartButton)
            $0.trailing.equalTo(cartButton.snp.leading).offset(-Constants.iconSpacing)
            $0.size.equalTo(Constants.iconSize)
        }
        
        benefitButton.snp.makeConstraints {
            $0.centerY.equalTo(cartButton)
            $0.trailing.equalTo(bellButton.snp.leading).offset(-Constants.iconSpacing)
            $0.size.equalTo(Constants.iconSize)
        }
        searchTextField.snp.makeConstraints {
            $0.top.equalTo(addressButton.snp.bottom).offset(12)
            $0.leading.trailing.equalToSuperview().inset(Constants.horizontalInset)
            $0.height.equalTo(40)
        }
    }
}

extension BaeminHeaderView {
    private enum Constants {
        static let iconSize: CGFloat = 28
        static let iconSpacing: CGFloat = 12
        static let horizontalInset: CGFloat = 10
        static let verticalInset: CGFloat = 8
    }
}
