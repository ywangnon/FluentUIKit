//
//  UIImageView+Extensions.swift
//  CustomExtension
//
//  Created by Hansub Yoo on 3/26/25.
//

import UIKit

extension UIImageView {

    // MARK: - Initialization

    /// Auto Layout을 사용하는 UIImageView 생성
    static func make(image: UIImage? = nil, contentMode: ContentMode = .scaleAspectFit) -> Self {
        let imageView = Self()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = image
        imageView.contentMode = contentMode
        return imageView
    }

    // MARK: - Configuration

    /// 이미지 설정
    @discardableResult
    func withImage(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }

    /// 렌더링 모드 설정
    @discardableResult
    func withRenderingMode(_ mode: UIImage.RenderingMode) -> Self {
        if let img = self.image {
            self.image = img.withRenderingMode(mode)
        }
        return self
    }

    /// 컨텐츠 모드 설정
    @discardableResult
    func withContentMode(_ mode: UIView.ContentMode) -> Self {
        self.contentMode = mode
        return self
    }

    /// 이미지 틴트 색상 설정
    @discardableResult
    func withTintColor(_ color: UIColor) -> Self {
        self.tintColor = color
        return self
    }

    /// 마스크 설정
    @discardableResult
    func withMaskToBounds(_ enabled: Bool = true) -> Self {
        self.layer.masksToBounds = enabled
        return self
    }
}
