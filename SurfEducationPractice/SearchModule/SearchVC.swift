//
//  SearchVC.swift
//  SurfEducationPractice
//
//  Created by Alexey Yarov on 08.08.2022.
//

import UIKit

class ResultsVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
    }
}

class SearchVC: UIViewController, UISearchResultsUpdating {

    let searchController = UISearchController(searchResultsController: ResultsVC())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        searchController.searchResultsUpdater = self
        navigationItem.searchController = searchController
        view.backgroundColor = .systemIndigo
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {
            return
        }
        let vc = searchController.searchResultsController as? ResultsVC
        vc?.view.backgroundColor = .yellow
        
        print(text)
        
    }
}
