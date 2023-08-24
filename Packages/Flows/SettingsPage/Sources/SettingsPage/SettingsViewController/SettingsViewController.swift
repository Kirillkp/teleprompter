//  
//  SettingsViewController.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import UIKit

final class SettingsViewController: UIViewController, SettingsModule {
    // MARK: - Public Properties

    var presenter: SettingsPresenterProtocol?

    // MARK: - Private Properties

    // MARK: - UI

    // MARK: - Override

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        createUI()
        bindViews()
        presenter?.viewLoaded()
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
}

// MARK: - MainViewProtocol

extension SettingsViewController: SettingsViewProtocol { }

// MARK: - Create UI

private extension SettingsViewController {
    func createUI() {
        view.backgroundColor = .white
        title = "Настройки"

    }
}

// MARK: - Actions

private extension SettingsViewController {
    func bindViews() { }
}
