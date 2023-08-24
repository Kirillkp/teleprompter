//
//  CoordinatorFactory+SettingsCoordinator.swift
//  
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import UIKit
import Coordinator

extension CoordinatorFactory {
    public func makeSettingsCoordinator() -> CoordinatorGroup<SettingsCoordinator> {
        let navigation = UINavigationController()
        let router = Router(rootController: navigation)
        let coordinator = SettingsCoordinator(
            router: router,
            moduleFactory: moduleFactory,
            coordinatorFactory: self
        )

        return (coordinator, navigation)
    }
}

