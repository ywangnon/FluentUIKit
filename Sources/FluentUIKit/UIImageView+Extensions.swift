//
//  UIImageView+Extensions.swift
//  CustomExtension
//
//  Created by Hansub Yoo on 3/26/25.
//

import UIKit

public extension UIImageView {

    static func make(contentMode: UIView.ContentMode = .scaleAspectFit) -> Self {
        let imageView = Self()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = contentMode
        return imageView
    }

    @discardableResult
    func withImage(named name: String, isSystem: Bool = false) -> Self {
        self.image = isSystem ? UIImage(systemName: name) : UIImage(named: name)
        return self
    }

    @discardableResult
    func withImage(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }

    @discardableResult
    func withTintColor(_ color: UIColor, renderingMode: UIImage.RenderingMode = .alwaysTemplate) -> Self {
        self.image = self.image?.withRenderingMode(renderingMode)
        self.tintColor = color
        return self
    }
}
