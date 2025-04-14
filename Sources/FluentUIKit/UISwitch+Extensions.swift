//
//  UISwitch+Extensions.swift
//  FluentUIKit
//
//  Created by Hansub Yoo on 4/14/25.
//

import UIKit

public extension UISwitch {

    // MARK: - Configuration

    /// 스위치 상태 설정
    @discardableResult
    func withIsOn(_ isOn: Bool, animated: Bool = false) -> Self {
        setOn(isOn, animated: animated)
        return self
    }

    /// 틴트 컬러 설정 (border color 느낌)
    @discardableResult
    func withTintColor(_ color: UIColor?) -> Self {
        self.tintColor = color
        return self
    }

    /// 활성화 되었을 때 컬러 설정
    @discardableResult
    func withOnTintColor(_ color: UIColor?) -> Self {
        self.onTintColor = color
        return self
    }

    /// Thumb 컬러 설정 (동그라미)
    @discardableResult
    func withThumbTintColor(_ color: UIColor?) -> Self {
        self.thumbTintColor = color
        return self
    }
}
