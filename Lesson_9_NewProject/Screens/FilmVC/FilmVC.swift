//
//  FilmVC.swift
//  Lesson_9_NewProject
//
//  Created by Дима Губеня on 06.08.2022.
//

import UIKit

// MARK: - FilmVC

class FilmVC: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var filmsTableView: UITableView!
    
    // MARK: - Properties
    
    private let presenter: FilmPresenterProtocol
    
    // MARK: - Init
    
    init(presenter:FilmPresenterProtocol) {
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
}

// MARK: - Private Extension

private extension FilmVC {
    func setupUI() {
        setupTableView()
        
    }
    
    func setupTableView() {
        filmsTableView.delegate = self
        filmsTableView.dataSource = self
        filmsTableView.register(.init(nibName: String(describing: FilmCell.self), bundle: nil), forCellReuseIdentifier: String(describing: FilmCell.self))
    }
}

extension FilmVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = filmsTableView.dequeueReusableCell(withIdentifier: String(describing: FilmCell.self), for: indexPath) as! FilmCell
        let film = presenter.films[indexPath.row]
        cell.config(with: film)
        
        return cell
    }
    
}
