//
//  BaeminFeedViewController.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/10/25.
//

import UIKit
import SnapKit

final class BaeminFeedViewController: UIViewController {
    private let headerView = BaeminHeaderView()
    private let tableView = UITableView(frame: .zero, style: .grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSearchView()
        setupTableView()
        setupLayout()
    }
    
    private func setupSearchView() {
        view.addSubview(headerView)
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        //tableView.sectionHeaderTopPadding = 0
        tableView.sectionFooterHeight = 0
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(
            BmartSectionCell.self,
            CategorySectionCell.self,
            MarketSectionCell.self,
            AdvertisementSectionCell.self,
            OneServingSectionCell.self,
        )
    }

    private func setupLayout() {
        headerView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(-70)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(90)
        }
        
        tableView.snp.makeConstraints {
            $0.top.equalTo(headerView.snp.bottom).offset(10)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
}

extension BaeminFeedViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: BmartSectionCell.identifier, for: indexPath) as? BmartSectionCell else {
                return UITableViewCell()
            }
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: CategorySectionCell.identifier, for: indexPath)
            (cell as? CategorySectionCell)?.configure(items: MockData.categoryData)
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: MarketSectionCell.identifier, for: indexPath)
            (cell as? MarketSectionCell)?.configure(items: MockData.marketData)
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: AdvertisementSectionCell.identifier, for: indexPath)
            (cell as? AdvertisementSectionCell)?.configure(items: MockData.advertisementData)
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
            return 300
        case 2:
            return 100
        case 3:
            return 100
        default:
            return 400
        }
    }

}
