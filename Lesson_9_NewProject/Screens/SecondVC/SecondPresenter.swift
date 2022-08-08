//
//  SecondPresenter.swift
//  Lesson_9_NewProject
//
//  Created by Max Stovolos on 8/6/22.
//

import Foundation
import UIKit

protocol SecondPresenterProtocol {
    func showNextScreen(view: UIViewController)
}

class SecondPresenter {
    private var view: SecondVCProtocol!
    func set(view: SecondVCProtocol) {
        self.view = view
    }
}

extension SecondPresenter: SecondPresenterProtocol {
    func showNextScreen(view: UIViewController) {
        let presenter = UserIdentifaerPresenter()
        let vc = UserIdentifaerVC(presenter: presenter)
        
        view.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
