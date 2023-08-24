//
//  SettingsCoordinator.swift
//  
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import Coordinator

public final class SettingsCoordinator: BaseCoordinator {
    private let moduleFactory: ModuleFactory
    private let router: Routable
    private let coordinatorFactory: CoordinatorFactory

    private let settingsModule: SettingsModule

    public init(
        router: Routable,
        moduleFactory: ModuleFactory,
        coordinatorFactory: CoordinatorFactory
    ) {

        self.router = router
        self.moduleFactory = moduleFactory
        self.coordinatorFactory = coordinatorFactory

        settingsModule = moduleFactory.createSettingsModule()
    }

    public override func start() {
        showSettingsModule()
    }

    private func showSettingsModule() {
        router.push(settingsModule)
    }
}
