//
//  ApplicationController.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import UIKit
import Coordinator

enum ApplicationController {

    private(set) static var tabBarCoordinator: TabBarCoordinator?

    /// Стартовая настройка приложения
    static func initialSetup() {
        loadMainViewController()
    }

    private static func loadMainViewController() {
        let tabBarViewController = ModuleFactory.createTabBarModule()
        let navigationController = UINavigationController()
        tabBarCoordinator = TabBarCoordinator(
            router: Router(rootController: navigationController),
            tabBarController: tabBarViewController
        )

        tabBarCoordinator?.start()

        setRootViewController(tabBarViewController, animated: true)
    }

    private static func setRootViewController(_ viewController: UIViewController, animated: Bool) {
        let appWindow = AppDelegate.shared.appWindow

        if appWindow.rootViewController != nil {
            return
        }

        appWindow.rootViewController = viewController
    }
}
