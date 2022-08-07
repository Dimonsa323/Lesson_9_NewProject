//
//  UserIdentifaerVC.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 06.08.2022.
//

import UIKit

class UserIdentifaerVC: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}
