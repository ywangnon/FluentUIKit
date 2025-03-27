//
//  UITextField+Extensions.swift
//  CustomExtension
//
//  Created by Hansub Yoo on 3/26/25.
//

import UIKit

extension UITextField {

    // MARK: - Initialization

    /// Auto Layout을 사용하는 UITextField 생성
    static func make(placeholder: String? = nil) -> Self {
        let field = Self()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.placeholder = placeholder
        return field
    }

    // MARK: - Text & Style

    /// 플레이스홀더 설정
    @discardableResult
    func withPlaceholder(_ text: String?) -> Self {
        self.placeholder = text
        return self
    }

    /// 텍스트 색상 설정
    @discardableResult
    func withTextColor(_ color: UIColor) -> Self {
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

    /// 보안 입력 설정
    @discardableResult
    func withSecureEntry(_ isSecure: Bool = true) -> Self {
        self.isSecureTextEntry = isSecure
        return self
    }

    /// 키보드 타입 설정
    @discardableResult
    func withKeyboardType(_ type: UIKeyboardType) -> Self {
        self.keyboardType = type
        return self
    }

    /// 자동 대문자 설정
    @discardableResult
    func withAutocapitalization(_ type: UITextAutocapitalizationType) -> Self {
        self.autocapitalizationType = type
        return self
    }

    /// 왼쪽 여백 추가
    @discardableResult
    func withLeftPadding(_ amount: CGFloat) -> Self {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: 1))
        leftView = paddingView
        leftViewMode = .always
        return self
    }

    /// 오른쪽 여백 추가
    @discardableResult
    func withRightPadding(_ amount: CGFloat) -> Self {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: 1))
        rightView = paddingView
        rightViewMode = .always
        return self
    }
}
