//
//  Coordinatable.swift
//  
//
//  Created by Кирилл Полосов on 22.08.2023.
//

import Foundation

public protocol Coordinatable: AnyObject {
    var onFinish: ((Coordinatable) -> ())? { get set }
    func start()
}
