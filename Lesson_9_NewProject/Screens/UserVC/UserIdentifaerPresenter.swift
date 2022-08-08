//
//  UserIdentifaerPresenter.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 06.08.2022.
//

import Foundation
import UIKit

// MARK: Protocol

protocol UserIdentifaerProtocol {
    var user: User { get }
    func showFilms(view: UIViewController)
    
}

// MARK: Presenter

class UserIdentifaerPresenter {
    
    var user = User.userGetInfo()
    var film = Film.getFilm()
    private var view: UserProtocol!
    func set(view: UserProtocol) {
        self.view = view
    }
}

// MARK: - Private Extension

extension UserIdentifaerPresenter: UserIdentifaerProtocol {
    func showFilms(view: UIViewController) {
        let presenter = FilmPresenter()
        let vc = FilmVC(presenter: presenter)
        
        view.navigationController?.pushViewController(vc, animated: true)
    }
    
}
