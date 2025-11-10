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
    }
    
    private func layoutTableView() {
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

extension BaeminFeedViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AdvertisementCell", for: indexPath) as? AdvertisementCell else {
            return UITableViewCell()
        }
        cell.configure(ads: [UIImage(systemName: "person.fill"), UIImage(systemName: "person")])
        return cell
    }
}
