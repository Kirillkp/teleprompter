//  
//  MainProtocols.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import Foundation
import Coordinator

// PRESENTER -> Coordinator

protocol MainModule: Presentable {

}

// VIEW -> PRESENTER

protocol MainPresenterProtocol: AnyObject {
    func viewLoaded()
}

// PRESENTER -> VIEW

protocol MainViewProtocol: AnyObject {

}
