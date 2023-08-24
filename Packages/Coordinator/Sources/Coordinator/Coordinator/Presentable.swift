//
//  Presentable.swift
//  
//
//  Created by Кирилл Полосов on 22.08.2023.
//

import UIKit

public protocol Presentable: AnyObject {
    var toPresent: UIViewController? { get }
}

// MARK: - Default implementation for UIViewController

extension UIViewController: Presentable {
    public var toPresent: UIViewController? {
        return self
    }
}
