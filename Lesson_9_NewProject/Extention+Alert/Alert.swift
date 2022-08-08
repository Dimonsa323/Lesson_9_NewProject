//
//  Alert.swift
//  Lesson_9_NewProject
//
//  Created by Max Stovolos on 8/7/22.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert( with title: String, and message: String, cloure: @escaping () -> ()) {
        let alert = UIAlertController(title: "Ops", message: "Wrong format!!!!!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Click", style: .default) { _ in
           cloure()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
}
}
