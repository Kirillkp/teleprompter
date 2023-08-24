//
//  ModuleFactory+MainModule.swift
//  
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import Coordinator

extension ModuleFactory {
    func createMainModule() -> MainModule {
        let controller = MainViewController()
        let presenter = MainPresenter(view: controller)
        controller.presenter = presenter
        return controller
    }
}
