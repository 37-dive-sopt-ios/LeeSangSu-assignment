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
        tableView.register(AdvertisementCell.self, forCellReuseIdentifier: "AdvertisementCell")
        tableView.register(MarketCell.self, forCellReuseIdentifier: "MarketCell")
    }
    
    private func layoutTableView() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

extension BaeminFeedViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
            2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "AdvertisementCell", for: indexPath) as? AdvertisementCell else {
                return UITableViewCell()
            }
            cell.configure(items: [UIImage(systemName: "person.fill"), UIImage(systemName: "person")])
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "MarketCell", for: indexPath) as? MarketCell else {
                return UITableViewCell()
            }
            cell.configure(items: [
                CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
                CategoryItem(image: UIImage(systemName: "person"), text: "이마트"),
                CategoryItem(image: UIImage(systemName: "sun.min"), text: "홈플러스"),
                CategoryItem(image: UIImage(systemName: "sun.max"), text: "배민"),
                CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
                CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
                CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
                CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU")
            ])
            return cell
        }
    }
}

extension BaeminFeedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
