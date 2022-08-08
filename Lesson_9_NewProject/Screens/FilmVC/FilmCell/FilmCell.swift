//
//  FilmCell.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 07.08.2022.
//

import UIKit

// MARK: - FilmCell

class FilmCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nameFilmLabel: UILabel!
    @IBOutlet weak var filmImageView: UIImageView!
    
    // MARK: - Life Cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func config(with model: Film) {
        nameFilmLabel.text = model.nameFilm
        filmImageView.image = UIImage(named: model.imageFilm)
    }
}

