//
//  EnterPresenter.swift
//  Lesson_9_NewProject
//
//  Created by Max Stovolos on 8/6/22.
//

import Foundation

protocol EnterPresenterProtocol {
    var user: User? { get }
    
    func createUser(login: String, password: String)
}

class EnterPresenter {
    var user: User?
}

extension EnterPresenter: EnterPresenterProtocol {
    func createUser(login: String, password: String) {
        let user = User(login: login, password: password)
    }
}
