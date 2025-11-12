//
//  MockData.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/12/25.
//

import UIKit

enum MockData {
    static let advertisementData: [UIImage?] = [
        UIImage(systemName: "person.fill"),
        UIImage(systemName: "person")
    ]

    static let marketData: [CategoryItem] = [
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person"), text: "이마트"),
        CategoryItem(image: UIImage(systemName: "sun.min"), text: "홈플러스"),
        CategoryItem(image: UIImage(systemName: "sun.max"), text: "배민"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person"), text: "이마트"),
        CategoryItem(image: UIImage(systemName: "sun.min"), text: "홈플러스"),
        CategoryItem(image: UIImage(systemName: "sun.max"), text: "배민"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU")
    ]
    
    static let categoryData: [CategoryItem] = [
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person"), text: "이마트"),
        CategoryItem(image: UIImage(systemName: "sun.min"), text: "홈플러스"),
        CategoryItem(image: UIImage(systemName: "sun.max"), text: "배민"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person"), text: "이마트"),
        CategoryItem(image: UIImage(systemName: "sun.min"), text: "홈플러스"),
        CategoryItem(image: UIImage(systemName: "sun.max"), text: "배민"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "CU")
    ]
    
    static let oneServingData: [OneServingItem] = [
        OneServingItem(
            image: UIImage(named: "jjajang") ?? UIImage(systemName: "person.fill"),
            storeName: "홍콩반점0410",
            menuName: "짜장면 한그릇",
            discount: "20%",
            discountedPrice: "₩6,900",
            originalPrice: "₩8,500",
            rating: "4.8",
            commentCount: "200+"
        ),
        OneServingItem(
            image: UIImage(named: "hanpan") ?? UIImage(systemName: "person.fill"),
            storeName: "한솥도시락",
            menuName: "치킨마요",
            discount: "20%",
            discountedPrice: "₩5,900",
            originalPrice: "₩7,000",
            rating: "4.7",
            commentCount: "150+"
        ),
        OneServingItem(
            image: UIImage(named: "bongchu") ?? UIImage(systemName: "person.fill"),
            storeName: "봉추찜닭",
            menuName: "찜닭 한그릇",
            discount: "10%",
            discountedPrice: "₩8,100",
            originalPrice: "₩9,000",
            rating: "4.9",
            commentCount: "320+"
        ),
        OneServingItem(
            image: UIImage(named: "hanpan") ?? UIImage(systemName: "person.fill"),
            storeName: "한솥도시락",
            menuName: "치킨마요",
            discount: "20%",
            discountedPrice: "₩5,900",
            originalPrice: "₩7,000",
            rating: "4.7",
            commentCount: "150+"
        ),
        OneServingItem(
            image: UIImage(named: "hanpan") ?? UIImage(systemName: "person.fill"),
            storeName: "한솥도시락",
            menuName: "치킨마요",
            discount: "20%",
            discountedPrice: "₩5,900",
            originalPrice: "₩7,000",
            rating: "4.7",
            commentCount: "150+"
        ),
    ]
}
