//
//  UIStackView+Extensions.swift
//  CustomExtension
//
//  Created by Hansub Yoo on 3/26/25.
//

import UIKit

extension UIStackView {

    // MARK: - Initialization

    /// Auto Layout을 사용하는 UIStackView 생성
    static func make(axis: NSLayoutConstraint.Axis = .vertical,
                     spacing: CGFloat = 0,
                     alignment: Alignment = .fill,
                     distribution: Distribution = .fill) -> Self {
        let stack = Self()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = axis
        stack.spacing = spacing
        stack.alignment = alignment
        stack.distribution = distribution
        return stack
    }

    // MARK: - Configuration

    /// 방향 설정
    @discardableResult
    func withAxis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }

    /// 정렬 설정
    @discardableResult
    func withAlignment(_ alignment: Alignment) -> Self {
        self.alignment = alignment
        return self
    }

    /// 분배 방식 설정
    @discardableResult
    func withDistribution(_ distribution: Distribution) -> Self {
        self.distribution = distribution
        return self
    }

    /// 간격 설정
    @discardableResult
    func withSpacing(_ spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }

    // MARK: - View Handling

    /// 서브뷰들을 스택에 추가
    @discardableResult
    func withArrangedSubviews(_ views: [UIView]) -> Self {
        views.forEach { self.addArrangedSubview($0) }
        return self
    }

    /// 단일 뷰 추가
    @discardableResult
    func withArrangedSubview(_ view: UIView) -> Self {
        addArrangedSubview(view)
        return self
    }
}
