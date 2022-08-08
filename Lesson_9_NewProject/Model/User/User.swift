//
//  User.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 06.08.2022.
//

import Foundation


struct User {
    let login: String
    let password: String
}

extension User {
    static func userGetInfo() -> User {
        return User(login: "Dima", password: "12345")
    }
}
