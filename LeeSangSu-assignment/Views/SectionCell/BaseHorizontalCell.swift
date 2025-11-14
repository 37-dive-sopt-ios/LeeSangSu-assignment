//
//  BaseHorizontalCell.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/11/25.
//

import UIKit
import SnapKit

class BaseHorizontalCell<Item, Cell: UICollectionViewCell>: UITableViewCell,
    UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    var items: [Item] = []
    
    var lineSpacing: CGFloat { 0 }
    var interitemSpacing: CGFloat { 0 }

    lazy var collectionViewLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = lineSpacing
        layout.minimumInteritemSpacing = interitemSpacing
        layout.sectionInset = .init(top: 0, left: 10, bottom: 0, right: 10)
        return layout
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
        return collectionView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(items: [Item]) {
        self.items = items
        collectionView.reloadData()
    }
    
    // MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: Cell.identifier,
            for: indexPath
        ) as? Cell else {
            return UICollectionViewCell()
        }
        configureCell(cell, item: items[indexPath.row])
        return cell
    }
    
    func configureCell(_ cell: Cell, item: Item) {}

    // MARK: - UICollectionViewDelegateFlowLayout
    
    var cellWidth: CGFloat { 70 }
    var cellHeight: CGFloat { 70 }

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: cellWidth, height: cellHeight)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {}
}
