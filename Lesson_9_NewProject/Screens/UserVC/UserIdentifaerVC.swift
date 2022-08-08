//
//  UserIdentifaerVC.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 06.08.2022.
//

import UIKit

protocol UserProtocol {
    
}

class UserIdentifaerVC: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    // MARK: - Properties
    
    private let presenter: UserIdentifaerProtocol
    
    private var loginText: String {
        return loginTextField.text ?? ""
    }

    private var passwordText: String {
        return passwordTextField.text ?? ""
    }
    
    // MARK: - Init
    
    init(presenter: UserIdentifaerProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    // MARK: - IBAction
    
    @IBAction func nextScreenButton() {
        presenter.showFilms(view: self)
    }
    
}

// MARK: - Private Extension 

private extension UserIdentifaerVC {
    func setupUI() {
    
    }
  
}

extension UserIdentifaerVC: UserProtocol {
   
}
