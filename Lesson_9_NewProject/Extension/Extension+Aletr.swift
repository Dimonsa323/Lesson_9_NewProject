//
//  Extension+Aletr.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 08.08.2022.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert(with title: String, and messege: String, closure: @escaping () -> ()) {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            closure()
        }
        alert.addAction(okAction)
        present(alert,animated: true)
    }
}
