//
//  MainPresenter.swift
//  TestApp
//
//  Created by KazbekMusaev on 20.07.2025.
//

import Foundation

protocol MainPresenterProtocol: AnyObject {
    func viewDidLoad()
}

final class MainPresenter {
    
    weak var view: MainViewProtocol?
    let interactor: MainInteractorProtocol
    let router: MainRouterProtocol
    
    init(interactor: MainInteractorProtocol, router: MainRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension MainPresenter: MainPresenterProtocol {
    func viewDidLoad() {
        view?.buildScreen()
    }
}
