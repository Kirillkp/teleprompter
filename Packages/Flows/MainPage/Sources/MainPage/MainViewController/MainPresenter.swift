//  
//  MainPresenter.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import UIKit

final class MainPresenter {    
    // MARK: - Private Properties

    private weak var view: MainViewProtocol?

    // MARK: - Init

    init(view: MainViewProtocol) {
        self.view = view
    }
}

// MARK: - MainPresenterProtocol

extension MainPresenter: MainPresenterProtocol {
    func viewLoaded() { }
}

// MARK: - Private Methods

private extension MainPresenter {
}
