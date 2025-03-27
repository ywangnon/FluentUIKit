//
//  UIButton+Extensions.swift
//  CustomExtension
//
//  Created by Hansub Yoo on 3/26/25.
//

import UIKit

extension UIButton {

    // MARK: - Initialization

    /// Auto Layout을 사용하는 UIButton 생성
    static func make(type: UIButton.ButtonType = .system) -> Self {
        let button = Self(type: type)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }

    // MARK: - Title & Font

    /// 타이틀 설정
    @discardableResult
    func withTitle(_ title: String?, for state: UIControl.State = .normal) -> Self {
        setTitle(title, for: state)
        return self
    }

    /// 타이틀 색상 설정
    @discardableResult
    func withTitleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> Self {
        setTitleColor(color, for: state)
        return self
    }

    /// 폰트 설정
    @discardableResult
    func withFont(_ font: UIFont) -> Self {
        titleLabel?.font = font
        return self
    }

    /// 타이틀 정렬
    @discardableResult
    func withTitleAlignment(_ alignment: NSTextAlignment) -> Self {
        titleLabel?.textAlignment = alignment
        return self
    }

    /// 줄 수 설정
    @discardableResult
    func withNumberOfLines(_ lines: Int) -> Self {
        titleLabel?.numberOfLines = lines
        return self
    }

    /// 최소 스케일 팩터 설정
    @discardableResult
    func withMinimumScaleFactor(_ factor: CGFloat) -> Self {
        titleLabel?.minimumScaleFactor = factor
        return self
    }

    /// 폰트 자동 축소 설정
    @discardableResult
    func withAdjustsFontSizeToFitWidth(_ adjusts: Bool) -> Self {
        titleLabel?.adjustsFontSizeToFitWidth = adjusts
        return self
    }

    // MARK: - Image

    /// 버튼 이미지 설정
    @discardableResult
    func withImage(_ image: UIImage?, for state: UIControl.State = .normal, renderingMode: UIImage.RenderingMode = .alwaysOriginal) -> Self {
        let renderedImage = image?.withRenderingMode(renderingMode)
        setImage(renderedImage, for: state)
        return self
    }

    /// 이미지와 타이틀 간 간격 설정
    @discardableResult
    func withImagePadding(_ spacing: CGFloat) -> Self {
        let inset = spacing / 2
        imageEdgeInsets = UIEdgeInsets(top: 0, left: -inset, bottom: 0, right: inset)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: inset, bottom: 0, right: -inset)
        return self
    }

    // MARK: - Alignment & Tag

    /// 컨텐츠 정렬
    @discardableResult
    func withContentAlignment(horizontal: UIControl.ContentHorizontalAlignment, vertical: UIControl.ContentVerticalAlignment) -> Self {
        contentHorizontalAlignment = horizontal
        contentVerticalAlignment = vertical
        return self
    }

    /// 태그 설정
    @discardableResult
    func withTag(_ tag: Int) -> Self {
        self.tag = tag
        return self
    }

    // MARK: - Decoration

    /// 타이틀 밑줄 추가
    @discardableResult
    func withUnderlineTitle(for state: UIControl.State = .normal) -> Self {
        guard let text = title(for: state), let color = titleColor(for: state) else { return self }

        let attributes: [NSAttributedString.Key: Any] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue,
            .underlineColor: color,
            .foregroundColor: color
        ]

        let attributed = NSAttributedString(string: text, attributes: attributes)
        setAttributedTitle(attributed, for: state)
        return self
    }
}
