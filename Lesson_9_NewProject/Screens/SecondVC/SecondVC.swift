//
//  SecondVC.swift
//  Lesson_9_NewProject
//
//  Created by Max Stovolos on 8/6/22.
//

import UIKit

protocol SecondVCProtocol {
    
}

class SecondVC: UIViewController {
    
    private let presenter: SecondPresenterProtocol
    init(presenter: SecondPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
}


extension SecondVC: SecondPresenterProtocol {
    func showNextScreen(view: UIViewController) {
        presenter.showNextScreen(view: self)
    }
    
    @IBAction func nextScreenButton() {
        presenter.showNextScreen(view: self)
    }
}

extension SecondVC: SecondVCProtocol {
    
}
