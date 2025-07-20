//
//  MainRouter.swift
//  TestApp
//
//  Created by KazbekMusaev on 20.07.2025.
//

import UIKit

protocol MainRouterProtocol {
    
}

final class MainRouter: MainRouterProtocol {
    
    weak var presenter: MainPresenterProtocol?
    
    
    //MARK: - ModuleBuilder
    static func build() -> UINavigationController {
        let view = MainView()
        let interactor = MainInteractor()
        let router = MainRouter()
        let presenter = MainPresenter(interactor: interactor, router: router)
        
        view.presenter = presenter
        presenter.view = view
        interactor.presenter = presenter
        router.presenter = presenter
        
        let navigationContoller = UINavigationController(rootViewController: view)
        
        return navigationContoller
    }
}
