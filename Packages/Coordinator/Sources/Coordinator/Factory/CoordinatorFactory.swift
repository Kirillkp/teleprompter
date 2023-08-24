//
//  CoordinatorFactory.swift
//  
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import Foundation

public typealias CoordinatorGroup<C: Coordinatable> = (coordinator: C, presentable: Presentable)

public final class CoordinatorFactory {
    public init() {}
    public let moduleFactory = ModuleFactory()
}
