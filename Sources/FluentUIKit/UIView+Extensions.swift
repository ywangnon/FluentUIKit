//
//  UIView+Extensions.swift
//  CustomExtionsion
//
//  Created by Hansub Yoo on 3/26/25.
//

import UIKit

extension UIView {
    
    // MARK: - Initialization
    
    /// Auto Layout을 사용하는 UIView 생성
    static func make() -> Self {
        let view = Self()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }

    // MARK: - Visibility

    /// 뷰의 숨김 여부 설정
    @discardableResult
    func withHidden(_ hidden: Bool) -> Self {
        isHidden = hidden
        return self
    }

    // MARK: - Appearance

    /// 배경색 설정
    @discardableResult
    func withBackgroundColor(_ color: UIColor) -> Self {
        backgroundColor = color
        return self
    }

    /// 모서리 둥글기 설정
    @discardableResult
    func withCornerRadius(_ radius: CGFloat) -> Self {
        layer.cornerRadius = radius
        clipsToBounds = true
        return self
    }

    /// 테두리 설정
    @discardableResult
    func withBorder(width: CGFloat, color: UIColor?) -> Self {
        layer.borderWidth = width
        layer.borderColor = color?.cgColor
        return self
    }

    /// 투명도 설정
    @discardableResult
    func withAlpha(_ value: CGFloat) -> Self {
        alpha = value
        return self
    }

    /// `clipsToBounds` 활성화
    @discardableResult
    func enableClipping() -> Self {
        clipsToBounds = true
        return self
    }

    // MARK: - Hierarchy

    /// 부모 뷰에 추가
    @discardableResult
    func addToSuperview(_ view: UIView) -> Self {
        view.addSubview(self)
        return self
    }

    /// 여러 서브뷰 추가
    @discardableResult
    func addSubviews(_ views: UIView...) -> Self {
        views.forEach { addSubview($0) }
        return self
    }

    // MARK: - Layout

    /// 고정된 크기 설정
    @discardableResult
    func withSize(width: CGFloat? = nil, height: CGFloat? = nil) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        if let w = width {
            widthAnchor.constraint(equalToConstant: w).isActive = true
        }
        if let h = height {
            heightAnchor.constraint(equalToConstant: h).isActive = true
        }
        return self
    }

    /// 커스텀 제약 조건 블록 (즉시 적용되지 않음)
    @discardableResult
    func withConstraints(_ closure: (Self) -> Void) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        closure(self)
        return self
    }

    /// 커스텀 제약 조건 블록 (배열 리턴 → 자동 활성화)
    @discardableResult
    func withConstraints(_ closure: (Self) -> [NSLayoutConstraint]) -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(closure(self))
        return self
    }
}
