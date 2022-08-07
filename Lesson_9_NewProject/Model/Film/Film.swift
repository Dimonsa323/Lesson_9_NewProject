//
//  Film.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 06.08.2022.
//

import Foundation


struct Film {
    let nameFilm: String
    let imageFilm: String
}

extension Film {
    func getFilm() -> [Film] {
        return [Film(nameFilm: "Темный Рыцарь", imageFilm: "Темный рыцарь"),
                Film(nameFilm: "Темный Рыцарь 2", imageFilm:  "Темный Рыцарь_2"),
                Film(nameFilm: "Темный Рыцарь 3", imageFilm: "Темный рыцарь_3"),
                Film(nameFilm: "Довод", imageFilm:  "Довод"),
                Film(nameFilm: "Одноклассники", imageFilm: "Одноклассники"),
                Film(nameFilm: "Одноклассники 2", imageFilm: "Одноклассники_2"),
                Film(nameFilm: "Чужой", imageFilm: "Чужой")]
    }
}
