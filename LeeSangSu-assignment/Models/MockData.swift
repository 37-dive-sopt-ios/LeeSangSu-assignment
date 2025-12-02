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
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "한그릇"),
        CategoryItem(image: UIImage(systemName: "person"), text: "고기"),
        CategoryItem(image: UIImage(systemName: "sun.min"), text: "치킨"),
        CategoryItem(image: UIImage(systemName: "sun.max"), text: "찜,탕"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "카페,디저트"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "야식"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "피자"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "패스트푸드"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "분식"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "픽업"),
        
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "?"),
        CategoryItem(image: UIImage(systemName: "person"), text: "??"),
        CategoryItem(image: UIImage(systemName: "sun.min"), text: "???"),
        CategoryItem(image: UIImage(systemName: "sun.max"), text: "0"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "00"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "000"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "1"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "11"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "111"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "1111"),
        
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "한그릇"),
        CategoryItem(image: UIImage(systemName: "person"), text: "고기"),
        CategoryItem(image: UIImage(systemName: "sun.min"), text: "치킨"),
        CategoryItem(image: UIImage(systemName: "sun.max"), text: "찜,탕"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "카페,디저트"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "야식"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "피자"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "패스트푸드"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "분식"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "픽업"),
        
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "한그릇"),
        CategoryItem(image: UIImage(systemName: "person"), text: "고기"),
        CategoryItem(image: UIImage(systemName: "sun.min"), text: "치킨"),
        CategoryItem(image: UIImage(systemName: "sun.max"), text: "찜,탕"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "카페,디저트"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "야식"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "피자"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "패스트푸드"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "분식"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "픽업"),
        
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "한그릇"),
        CategoryItem(image: UIImage(systemName: "person"), text: "고기"),
        CategoryItem(image: UIImage(systemName: "sun.min"), text: "치킨"),
        CategoryItem(image: UIImage(systemName: "sun.max"), text: "찜,탕"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "카페,디저트"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "야식"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "피자"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "패스트푸드"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "분식"),
        CategoryItem(image: UIImage(systemName: "person.fill"), text: "픽업"),
    ]
    
    static let oneServingData: [OneServingItem] = [
        OneServingItem(
            image: UIImage(named: "jjajang") ?? UIImage(systemName: "person.fill"),
            storeName: "홍콩반점0410",
            menuName: "짜장면 한그릇",
            discount: "20%",
            discountedPrice: "6,900원",
            originalPrice: "8,500원",
            rating: "4.8",
            commentCount: "200+"
        ),
        OneServingItem(
            image: UIImage(named: "hanpan") ?? UIImage(systemName: "person.fill"),
            storeName: "한솥도시락",
            menuName: "치킨마요",
            discount: "20%",
            discountedPrice: "5,900원",
            originalPrice: "7,000원",
            rating: "4.7",
            commentCount: "150+"
        ),
        OneServingItem(
            image: UIImage(named: "bongchu") ?? UIImage(systemName: "person.fill"),
            storeName: "봉추찜닭",
            menuName: "찜닭 한그릇",
            discount: "10%",
            discountedPrice: "8,100원",
            originalPrice: "9,000원",
            rating: "4.9",
            commentCount: "320+"
        ),
        OneServingItem(
            image: UIImage(named: "hanpan") ?? UIImage(systemName: "person.fill"),
            storeName: "한솥도시락",
            menuName: "치킨마요",
            discount: "20%",
            discountedPrice: "5,900원",
            originalPrice: "7,000원",
            rating: "4.7",
            commentCount: "150+"
        ),
        OneServingItem(
            image: UIImage(named: "hanpan") ?? UIImage(systemName: "person.fill"),
            storeName: "한솥도시락",
            menuName: "치킨마요",
            discount: "20%",
            discountedPrice: "5,900원",
            originalPrice: "7,000원",
            rating: "4.7",
            commentCount: "150+"
        ),
    ]
}

extension MockData {
    static let categories = ["음식 배달", "픽업", "장보기/쇼핑", "선물하기", "혜택 모아보기"]
}
