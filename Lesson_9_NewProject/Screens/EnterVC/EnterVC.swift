//
//  EnterVC.swift
//  Lesson_9_NewProject
//
//  Created by Max Stovolos on 8/6/22.
//

import UIKit

//MARK: - EnterVC

class EnterVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var helloLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var nextScreenButton: UIButton!
    
    @IBOutlet weak var createUserButton: UIButton!
    
    //MARK: - Properties
    
    private var presenter: EnterPresenterProtocol
    
    private var loginText: String {
        return nameTextField.text ?? ""
    }
    
    private var passwordText: String {
        return passwordTextField.text ?? ""
    }
    
    //MARK: - Init
    
    init(presenter: EnterPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        passwordTextField.delegate = self //Зачем делегат тут?
        
        setupUI()
    }
}

//MARK: - Private Extentions

private extension EnterVC {
    func setupUI() {
        nextScreenButton.layer.cornerRadius = 10
        createUserButton.layer.cornerRadius = 10
        //       nextScreenButton.layer.borderColor = UIColor.red.cgColor    Что это ?
    }
}

extension EnterVC {
    func clearTextField() {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
    func checkValidTextFieldWhenFinishEditing(textField: UITextField) {
        guard let inputText = textField.text, !inputText.isEmpty else {
            showAlert(with: "Oh", and: "Text ield is empty", cloure: clearTextField)
            return
        }
        
        if let _ = Double(textField.text ?? "") {
            showAlert(with: "No", and: "Wrong format", cloure: clearTextField)
            return
        }
    }
    func checkTextField() -> Bool {
        guard let loginText = nameTextField.text, !loginText.isEmpty, let passwordText = passwordTextField.text, !passwordText.isEmpty else {
            showAlert(with: "Ou", and: "Information Is Wrong", cloure: clearTextField)
            return false
        }
        return true 
    }
}

extension EnterVC: UITextFieldDelegate {
    
}

//MARK: - Action
extension EnterVC {
    @IBAction func nextButton() {
        guard checkTextField(), let user = presenter.user, user.login == loginText, user.password == passwordText else {
            showAlert(with: "Ops", and: "Юзера нету", cloure: clearTextField)
            return
        }
        presenter.showSecondScreen(currentview: self)
    }
    
    @IBAction func createButton() {
        guard checkTextField() else {
            return
        }
        presenter.createUser(login: loginText, password: passwordText)
        presenter.showSecondScreen(currentview: self)           //Зачем мы вызвали тут ?
    }
}


