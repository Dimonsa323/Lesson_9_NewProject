//
//  FilmPresenter.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 06.08.2022.
//

import Foundation
// MARK: - Protocol
protocol FilmPresenterProtocol {
    var films: [Film] { get }
}

// MARK: - Class FilmsPresenter

class FilmPresenter {
    let films: [Film]
    
    init() {
        films = Film.getFilm()
    }
    
}

// MARK: - Private Extension

extension FilmPresenter: FilmPresenterProtocol {

}



