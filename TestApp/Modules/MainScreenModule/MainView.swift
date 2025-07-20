//
//  MainView.swift
//  TestApp
//
//  Created by KazbekMusaev on 20.07.2025.
//

import UIKit

protocol MainViewProtocol: AnyObject {
    func buildScreen()
}

final class MainView: UIViewController {

    var presenter: MainPresenterProtocol?
    
    //MARK: - View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }

    //MARK: - Functions
    private func settupView() {
        view.backgroundColor = .background
        
    }
    
    //MARK: - View elements
    
    //MARK: - Actions
}


extension MainView: MainViewProtocol {
    func buildScreen() {
        settupView()
    }
    
    
}
