//
//  CategorySectionCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/13/25.
//

import UIKit
import SnapKit

final class CategorySectionCell: BaseHorizontalCell<CategoryItem, CategoryItemCell> {
    override var lineSpacing: CGFloat { 10 }
    override var interitemSpacing: CGFloat { 10 }
    override var cellWidth: CGFloat {
        (collectionView.frame.width - (6 * lineSpacing)) / 5
    }
    override var cellHeight: CGFloat { cellWidth + 15 }
    
    private let moreButton = UIButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupButton()
        setupLayout()
        collectionView.isPagingEnabled = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func configureCell(_ cell: CategoryItemCell, item: CategoryItem) {
        cell.configure(image: item.image, text: item.text)
    }
    
    private func setupButton() {
        contentView.addSubview(moreButton)
        moreButton.setTitleColor(.darkGray, for: .normal)
        moreButton.titleLabel?.font = .systemFont(ofSize: 14)
        moreButton.backgroundColor = .systemGray6
        moreButton.layer.cornerRadius = 8
        moreButton.setTitle("\(MockData.categories.first ?? "")에서 더보기 >", for: .normal)
    }
    
    private func setupLayout() {
        collectionView.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.bottom.equalToSuperview().inset(55)
        }
        
        moreButton.snp.makeConstraints {
            $0.top.equalTo(collectionView.snp.bottom).offset(10)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(40)
        }
    }

    // 스크롤될 때마다, 현재 페이지 인덱스를 계산 후 텍스트 업데이트
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetX = scrollView.contentOffset.x
        let pageWidth = scrollView.frame.width
        let newIndex = Int(round(offsetX / pageWidth))
        if newIndex >= 0 && newIndex < MockData.categories.count {
            let newCategory = MockData.categories[newIndex]
            moreButton.setTitle("\(newCategory)에서 더보기 >", for: .normal)
        }
    }
}
