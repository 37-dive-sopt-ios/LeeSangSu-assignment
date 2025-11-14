//
//  CategoryHeader.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/14/25.
//

import UIKit
import SnapKit

final class CategoryHeader: UIView {
        
    private var selectedIndex: Int = 0 {
        didSet {
            collectionView.reloadData()
            collectionView.scrollToItem(at: IndexPath(item: selectedIndex, section: 0),
                                        at: .centeredHorizontally,
                                        animated: true)
        }
    }
    
    func updateSelectedIndex(_ index: Int) {
        selectedIndex = index
    }
    
    private lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 10
        layout.sectionInset = .init(top: 0, left: 16, bottom: 0, right: 16)
        return layout
    }()
    
    private lazy var collectionView: UICollectionView = {
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        cv.showsHorizontalScrollIndicator = false
        cv.delegate = self
        cv.dataSource = self
        cv.register(CategoryNameCell.self, forCellWithReuseIdentifier: CategoryNameCell.identifier)
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(collectionView)
        collectionView.snp.makeConstraints { $0.edges.equalToSuperview() }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension CategoryHeader: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        MockData.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: CategoryNameCell.identifier,
            for: indexPath
        ) as? CategoryNameCell else { return UICollectionViewCell() }
        
        let title = MockData.categories[indexPath.item]
        let isSelected = indexPath.item == selectedIndex
        cell.configure(title: title, selected: isSelected)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        selectedIndex = indexPath.item
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let title = MockData.categories[indexPath.item]
        let font = UIFont.systemFont(ofSize: 16, weight: .medium)
        let width = title.size(withAttributes: [.font: font]).width + 20
        return CGSize(width: width, height: collectionView.frame.height)
    }
    
}
