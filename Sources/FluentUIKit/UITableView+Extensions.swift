//
//  UITableView+Extensions.swift
//  FluentUIKit
//
//  Created by Hansub Yoo on 3/28/25.
//

import UIKit

public extension UITableView {

    // MARK: - Initialization

    static func make(style: UITableView.Style = .plain) -> Self {
        let tableView = Self(frame: .zero, style: style)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }

    // MARK: - Delegate & DataSource

    @discardableResult
    func withDelegate(_ delegate: UITableViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }

    @discardableResult
    func withDataSource(_ dataSource: UITableViewDataSource) -> Self {
        self.dataSource = dataSource
        return self
    }

    // MARK: - Register

    @discardableResult
    func withRegisterCell<T: UITableViewCell>(_ cellClass: T.Type) -> Self {
        register(cellClass, forCellReuseIdentifier: String(describing: cellClass))
        return self
    }

    @discardableResult
    func withRegisterNib<T: UITableViewCell>(_ cellClass: T.Type) -> Self {
        let nib = UINib(nibName: String(describing: cellClass), bundle: nil)
        register(nib, forCellReuseIdentifier: String(describing: cellClass))
        return self
    }

    // MARK: - Reload

    @discardableResult
    func reloadDataIfNeeded() -> Self {
        DispatchQueue.main.async {
            self.reloadData()
        }
        return self
    }
}
