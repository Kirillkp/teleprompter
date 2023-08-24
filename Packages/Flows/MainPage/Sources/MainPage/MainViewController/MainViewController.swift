//  
//  MainViewController.swift
//  teleprompter
//
//  Created by Кирилл Полосов on 23.08.2023.
//

import UIKit

final class MainViewController: UIViewController, MainModule {
    // MARK: - Public Properties

    var presenter: MainPresenterProtocol?

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

extension MainViewController: MainViewProtocol {
}

// MARK: - Create UI

private extension MainViewController {
    func createUI() {
        view.backgroundColor = .white
        title = "Главная"
        
    }
}

// MARK: - Actions

private extension MainViewController {
    func bindViews() {
    }
}
