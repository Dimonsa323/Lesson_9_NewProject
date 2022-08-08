//
//  EnterPresenter.swift
//  Lesson_9_NewProject
//
//  Created by Max Stovolos on 8/6/22.
//

import Foundation
import UIKit

    // MARK: - Protocol

protocol EnterPresenterProtocol {
    var user: User? { get }
    
    func createUser(login: String, password: String)
    func showSecondScreen(currentview: UIViewController)
}

    // MARK: - Class

class EnterPresenter {
    var user: User?
    
    // MARK: - Properties
    
    private var closure: ((User) -> ())?
}

    // MARK: - Private Extension

extension EnterPresenter: EnterPresenterProtocol {
    func showSecondScreen(currentview: UIViewController) {
        guard user != nil else { return }
        let presenter = SecondPresenter()
        let newVC = SecondVC(presenter: presenter)
        currentview.navigationController?.pushViewController(newVC, animated: true)
    }
    
    func createUser(login: String, password: String) {
        user = User(login: login, password: password)
    }
}


