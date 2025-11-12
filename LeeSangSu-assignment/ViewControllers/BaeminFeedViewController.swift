//
//  BaeminFeedViewController.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/10/25.
//

import UIKit
import SnapKit

final class BaeminFeedViewController: UIViewController {
    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        layoutTableView()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(AdvertisementCell.self, forCellReuseIdentifier: AdvertisementCell.identifier)
        tableView.register(CategoryCell.self, forCellReuseIdentifier: CategoryCell.identifier)
        tableView.register(OneServingSectionCell.self, forCellReuseIdentifier: OneServingSectionCell.identifier)
    }
    
    private func layoutTableView() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

extension BaeminFeedViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: CategoryCell.identifier, for: indexPath)
            (cell as? CategoryCell)?.configure(items: MockData.marketData)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: AdvertisementCell.identifier, for: indexPath)
            (cell as? AdvertisementCell)?.configure(items: MockData.advertisementData)
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: OneServingSectionCell.identifier, for: indexPath)
            (cell as? OneServingSectionCell)?.configure(items: MockData.oneServingData)
            return cell
        }
    }
}

extension BaeminFeedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
        case 1:
            return 100
        default:
            return 300
        }
    }
}
