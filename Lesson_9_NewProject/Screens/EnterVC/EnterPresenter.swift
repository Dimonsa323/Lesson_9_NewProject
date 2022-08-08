//
//  EnterPresenter.swift
//  Lesson_9_NewProject
//
//  Created by Max Stovolos on 8/6/22.
//

import Foundation
import UIKit

protocol EnterPresenterProtocol {
    var user: User? { get }
    
    func createUser(login: String, password: String)
    func showSecondScreen(currentview: UIViewController)
}

class EnterPresenter {
    var user: User?
    
    private var closure: ((User) -> ())?
}

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
