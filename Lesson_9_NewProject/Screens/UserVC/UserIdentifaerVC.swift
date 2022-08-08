//
//  UserIdentifaerVC.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 06.08.2022.
//

import UIKit

// MARK: - Protocol

protocol UserProtocol {
    
}

// MARK: - UserVc

class UserIdentifaerVC: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    // MARK: - Properties
    
    private let presenter: UserIdentifaerProtocol
    
    
    
    // MARK: - Init
    
    init(presenter: UserIdentifaerProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.delegate = self
        passwordTextField.delegate = self
        
    }
    
    // MARK: - IBAction
    
    @IBAction func welcomeButton() {
        loginAndPasswordInfo()
    }
    
    @IBAction func nextScreenButton() {
        presenter.showFilms(view: self)
    }
    
}

// MARK: - Private Extension 


extension UserIdentifaerVC: UserProtocol {
    
}

extension UserIdentifaerVC: UITextFieldDelegate {
    func showAlert(with: String, and: String) {
        let showAllert = UIAlertController(title: with, message: and, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.loginTextField.text = ""
            self.passwordTextField.text = ""
        }
        showAllert.addAction(okAction)
        present(showAllert, animated: true)
    }
    //    func login() -> Bool {
    //        if loginTextField.text == user.login && passwordTextField.text == user.password {
    //             return true
    //         } else { return false}
}


private extension UserIdentifaerVC {
    func loginAndPasswordInfo() {
        guard let inputText = loginTextField.text, !inputText.isEmpty else {
            showAlert(with: "Text field is empty", and: "Enter text")
            return
        }
        
        if let _ = Double(inputText) {
            showAlert(with: "Wrong Format", and: "Please enter text")
            return }
        
        guard let inputTextPassword = passwordTextField.text, !inputText.isEmpty
        else { showAlert(with: "Password field is empty", and: "Enter password")
            return }
        
        if let _ = Double(inputTextPassword) {
            showAlert(with: "Wrong Format Password", and: "Please enter password")
            return }
    }
}

