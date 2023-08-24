//
//  TabBarCoordinator.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import Foundation
import Coordinator
import MainPage
import SettingsPage

final class TabBarCoordinator: BaseCoordinator {

    private let router: Routable
    private let coordinatorFactory: CoordinatorFactory

    private weak var tabBarController: TabBarController?
    private weak var mainCoordinator: MainCoordinator?
    private weak var settingsCoordinator: SettingsCoordinator?

    init(
        router: Routable,
        coordinatorFactory: CoordinatorFactory = .init(),
        tabBarController: TabBarController
    ) {

        self.router = router
        self.coordinatorFactory = coordinatorFactory
        self.tabBarController = tabBarController
    }

    override func start() {
        bindToTabBarModule()
    }

    private func bindToTabBarModule() {
        let modernControllers = TabBarItem.allCases
            .compactMap {
                makeTabBarItemCoordinator(for: $0).toPresent
            }

        tabBarController?.setViewControllers(modernControllers, animated: false)

        tabBarController?.configureThemeAppearance()
    }

    private func makeTabBarItemCoordinator(for item: TabBarItem) -> Presentable {
        let coordinator: Coordinatable
        let presentable: Presentable

        switch item {
        case .main:
            let (mainCoordinator, mainPresentable) = coordinatorFactory.makeMainCoordinator()

            (coordinator, presentable) = (mainCoordinator, mainPresentable)

            self.mainCoordinator = mainCoordinator
        case .settings:
            let (settingsCoordinator, settingsPresentable) = coordinatorFactory.makeSettingsCoordinator()

            (coordinator, presentable) = (settingsCoordinator, settingsPresentable)

            self.settingsCoordinator = settingsCoordinator
        }

        add(child: coordinator)

        coordinator.start()

        return presentable
    }
}
