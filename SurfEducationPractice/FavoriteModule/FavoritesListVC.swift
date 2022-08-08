//
//  FavoritesListVC.swift
//  SurfEducationPractice
//
//  Created by Alexey Yarov on 03.08.2022.
//

import UIKit

class FavoritesListVC: UIViewController {
    
    override func viewDidLoad() {
    
        let searchButton = UIBarButtonItem (image: UIImage(named: "SearchSymbol"), style: .plain, target: self, action: #selector(searchStuff(sender:)))
        
        super.viewDidLoad()
        title = "Favorites"
        view.backgroundColor = .systemPink
        navigationItem.rightBarButtonItem = searchButton
       
    }
    
    @objc func searchStuff (sender: UIBarButtonItem) {
        let searchController = SearchVC()
        navigationController?.pushViewController(searchController, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
