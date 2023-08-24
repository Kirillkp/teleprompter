//
//  CoordinatorFactory+MainCoordinator.swift
//  
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import UIKit
import Coordinator

extension CoordinatorFactory {
    public func makeMainCoordinator() -> CoordinatorGroup<MainCoordinator> {
        let navigation = UINavigationController()
        let router = Router(rootController: navigation)
        let coordinator = MainCoordinator(
            router: router,
            moduleFactory: moduleFactory,
            coordinatorFactory: self
        )

        return (coordinator, navigation)
    }
}

