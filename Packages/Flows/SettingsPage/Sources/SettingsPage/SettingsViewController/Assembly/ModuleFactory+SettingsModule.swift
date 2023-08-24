//
//  ModuleFactory+SettingsModule.swift
//  
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import Coordinator

extension ModuleFactory {
    func createSettingsModule() -> SettingsModule {
        let controller = SettingsViewController()
        let presenter = SettingsPresenter(view: controller)
        controller.presenter = presenter
        return controller
    }
}
