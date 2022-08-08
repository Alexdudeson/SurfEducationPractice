//
//  FavoritesListVC.swift
//  SurfEducationPractice
//
//  Created by Alexey Yarov on 03.08.2022.
//

import UIKit

class FavoritesListVC: UIViewController {
    
    var searchButton = UIBarButtonItem (image: UIImage(named: "SearchSymbol"), style: .plain, target: self, action: #selector(searchStuff(sender:)))
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        navigationItem.rightBarButtonItem = searchButton
       
    }
    
    @objc func searchStuff (sender: UIBarButtonItem) {
        let searchController = UISearchController(searchResultsController: nil)
        
        navigationItem.searchController = searchController
    }
    
    
}
