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
        setupUI()
    }
}

//MARK: - Action
extension EnterVC {
    @IBAction func nextButton() {
    }
    
    @IBAction func createButton() {
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

//MARK: - Alerts

func showAlert() {
    let alert = UIAlertController(title: "Ops", message: "Wrong format", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Click", style: .default, handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>)
}

