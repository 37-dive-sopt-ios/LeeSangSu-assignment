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
        searchTextField.placeholder = "검색어를 입력하세요"
        searchTextField.layer.cornerRadius = 10
        searchTextField.layer.borderWidth = 2
        searchTextField.layer.borderColor = UIColor.black.cgColor
        searchTextField.backgroundColor = .systemGray6
        searchTextField.setRightIcon(image: UIImage(systemName: "magnifyingglass")) {
            print("검색창 버튼 클릭")
        }
    }

    private func setupLayout() {
        searchTextField.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(8)
            $0.centerY.equalToSuperview()
            $0.height.equalTo(40)
        }
    }
}
