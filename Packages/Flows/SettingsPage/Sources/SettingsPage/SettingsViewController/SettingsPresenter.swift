//  
//  SettingsPresenter.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import UIKit

final class SettingsPresenter {
    // MARK: - Private Properties

    private weak var view: SettingsViewProtocol?

    // MARK: - Init

    init(view: SettingsViewProtocol) {
        self.view = view
    }
}

// MARK: - MainPresenterProtocol

extension SettingsPresenter: SettingsPresenterProtocol {
    func viewLoaded() { }
}

// MARK: - Private Methods

private extension SettingsPresenter { }
