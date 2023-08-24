//  
//  SettingsProtocols.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import Foundation
import Coordinator

// PRESENTER -> Coordinator

protocol SettingsModule: Presentable { }

// VIEW -> PRESENTER

protocol SettingsPresenterProtocol: AnyObject {
    func viewLoaded()
}

// PRESENTER -> VIEW

protocol SettingsViewProtocol: AnyObject { }
