//
//  MainCoordinator.swift
//  
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import Coordinator

public final class MainCoordinator: BaseCoordinator {
    private let moduleFactory: ModuleFactory
    private let router: Routable
    private let coordinatorFactory: CoordinatorFactory

    private let mainModule: MainModule

    public init(
        router: Routable,
        moduleFactory: ModuleFactory,
        coordinatorFactory: CoordinatorFactory
    ) {

        self.router = router
        self.moduleFactory = moduleFactory
        self.coordinatorFactory = coordinatorFactory

        mainModule = moduleFactory.createMainModule()
    }

    public override func start() {
        showMainModule()
    }

    private func showMainModule() {
        router.push(mainModule)
    }
}
