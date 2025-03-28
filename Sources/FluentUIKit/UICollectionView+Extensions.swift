//
//  UICollectionView+Extensions.swift
//  FluentUIKit
//
//  Created by Hansub Yoo on 3/28/25.
//

import UIKit

public extension UICollectionView {

    // MARK: - Initialization

    static func make(layout: UICollectionViewLayout = UICollectionViewFlowLayout()) -> Self {
        let collectionView = Self(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }

    // MARK: - Delegate & DataSource

    @discardableResult
    func withDelegate(_ delegate: UICollectionViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }

    @discardableResult
    func withDataSource(_ dataSource: UICollectionViewDataSource) -> Self {
        self.dataSource = dataSource
        return self
    }

    // MARK: - Register

    @discardableResult
    func withRegisterCell<T: UICollectionViewCell>(_ cellClass: T.Type) -> Self {
        register(cellClass, forCellWithReuseIdentifier: String(describing: cellClass))
        return self
    }

    @discardableResult
    func withRegisterNib<T: UICollectionViewCell>(_ cellClass: T.Type) -> Self {
        let nib = UINib(nibName: String(describing: cellClass), bundle: nil)
        register(nib, forCellWithReuseIdentifier: String(describing: cellClass))
        return self
    }

    // MARK: - Layout

    @discardableResult
    func withLayout(_ layout: UICollectionViewLayout) -> Self {
        collectionViewLayout = layout
        return self
    }

    @discardableResult
    func reloadDataIfNeeded() -> Self {
        DispatchQueue.main.async {
            self.reloadData()
        }
        return self
    }
}
