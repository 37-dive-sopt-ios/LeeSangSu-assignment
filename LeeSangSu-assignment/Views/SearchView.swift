//
//  SearchView.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/13/25.
//

import UIKit
import SnapKit

final class SearchView: UIView {
    private let searchTextField = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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

    private func setupLayout() {
        searchTextField.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.top.equalToSuperview()
            $0.height.equalTo(40)
        }
    }
}
