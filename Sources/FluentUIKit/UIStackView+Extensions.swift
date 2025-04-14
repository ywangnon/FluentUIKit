//
//  UIStackView+Extensions.swift
//  FluentUIKit
//
//  Created by Hansub Yoo on 3/26/25.
//

import UIKit

public extension UIStackView {
    
    // MARK: - Initialization
    
    /// Auto Layout을 사용하는 UIStackView 생성
    static func make(axis: NSLayoutConstraint.Axis = .vertical,
                     spacing: CGFloat = 0,
                     alignment: Alignment = .fill,
                     distribution: Distribution = .fill) -> Self {
        let stackView = Self()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = axis
        stackView.spacing = spacing
        stackView.alignment = alignment
        stackView.distribution = distribution
        return stackView
    }
    
    // MARK: - Configuration
    
    @discardableResult
    func withAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    @discardableResult
    func withSpacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }
    
    @discardableResult
    func withAlignment(_ alignment: Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    @discardableResult
    func withDistribution(_ distribution: Distribution) -> Self {
        self.distribution = distribution
        return self
    }
    
    // MARK: - Add Views
    
    /// 배열 방식
    @discardableResult
    func withArrangedSubviews(_ views: [UIView]) -> Self {
        views.forEach { self.addArrangedSubview($0) }
        return self
    }
    
    /// 가변 매개변수 방식
    @discardableResult
    func withArrangedSubviews(_ views: UIView...) -> Self {
        views.forEach { self.addArrangedSubview($0) }
        return self
    }
}
