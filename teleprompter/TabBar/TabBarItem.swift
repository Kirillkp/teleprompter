//
//  TabBarItem.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import UIKit

enum TabBarItem: Int, CaseIterable {
    case main
    case settings
}

extension TabBarItem {
    private var icon: UIImage {
        switch self {
        case .main:
            return UIImage.add

        case .settings:
            return  UIImage.checkmark
        }
    }

    private var title: String {
        switch self {
        case .main:
            return "Главная"
        case .settings:
            return "Настройки"
        }
    }

    func asTabBarItem() -> UITabBarItem {
        let item = UITabBarItem(title: nil, image: icon, selectedImage: icon)
        item.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        item.title = title

        return item
    }
}

