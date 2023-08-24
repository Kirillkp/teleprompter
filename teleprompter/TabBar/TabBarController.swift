//
//  TabBarController.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    func configureThemeAppearance() {
        if let viewControllers = viewControllers {
            zip(viewControllers, TabBarItem.allCases).forEach { controller, item in
                controller.tabBarItem = item.asTabBarItem()
                let image = XCAsset.Assets.cocktail.image
            }
        }
    }
}
