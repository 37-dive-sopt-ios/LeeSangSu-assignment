//
//  GradientView.swift
//  LeeSangSu-assignment
//
//  Created by 이상수 on 11/14/25.
//

import UIKit

final class GradientView: UIView {

    private let gradient = CAGradientLayer()

    init(colors: [UIColor], start: CGPoint = .init(x: 0.5, y: 0), end: CGPoint = .init(x: 0.5, y: 0.3)) {
        super.init(frame: .zero)
        gradient.colors = colors.map { $0.cgColor }
        gradient.startPoint = start
        gradient.endPoint = end
        layer.addSublayer(gradient)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = bounds
    }

    required init?(coder: NSCoder) { fatalError() }
}
