//
//  UILabel+Extensions.swift
//  CustomExtension
//
//  Created by Hansub Yoo on 3/26/25.
//

import UIKit

extension UILabel {
    
    // MARK: - Text & Style

    /// 텍스트 설정
    @discardableResult
    func withText(_ text: String?) -> Self {
        self.text = text
        return self
    }

    /// 텍스트 색상 설정
    @discardableResult
    func withTextColor(_ color: UIColor?) -> Self {
        self.textColor = color
        return self
    }

    /// 폰트 설정
    @discardableResult
    func withFont(_ font: UIFont) -> Self {
        self.font = font
        return self
    }

    /// 텍스트 정렬
    @discardableResult
    func withTextAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }

    /// 줄 수 설정
    @discardableResult
    func withNumberOfLines(_ lines: Int) -> Self {
        self.numberOfLines = lines
        return self
    }

    /// 최소 스케일 팩터 설정
    @discardableResult
    func withMinimumScaleFactor(_ factor: CGFloat) -> Self {
        self.minimumScaleFactor = factor
        return self
    }

    /// 폰트 자동 축소 설정
    @discardableResult
    func withAdjustsFontSizeToFitWidth(_ adjusts: Bool) -> Self {
        self.adjustsFontSizeToFitWidth = adjusts
        return self
    }

    /// 라인 브레이크 모드 설정
    @discardableResult
    func withLineBreakMode(_ mode: NSLineBreakMode) -> Self {
        self.lineBreakMode = mode
        return self
    }

    // MARK: - Decoration

    /// 텍스트에 밑줄 추가
    @discardableResult
    func withUnderline(style: NSUnderlineStyle = .single, color: UIColor? = nil) -> Self {
        guard let text = self.text else { return self }
        let attributedString = NSMutableAttributedString(string: text)

        let underlineColor = color ?? self.textColor ?? .black
        attributedString.addAttributes([
            .underlineStyle: style.rawValue,
            .underlineColor: underlineColor
        ], range: NSRange(location: 0, length: text.count))

        self.attributedText = attributedString
        return self
    }
}
