//
//  MainVC.swift
//  SurfEducationPractice
//
//  Created by Alexey Yarov on 03.08.2022.
//

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        
        let searchButton = UIBarButtonItem (image: UIImage(named: "SearchSymbol"), style: .plain, target: self, action: #selector(searchStuff))
        
        super.viewDidLoad()
        title = "Main"
        view.backgroundColor = .systemPurple
        navigationItem.rightBarButtonItem = searchButton
    }
    
    @objc func searchStuff () {
        let searchController = SearchVC()
//        searchController.title = "Search Here"
//        searchController.view.backgroundColor = .systemGreen
//        navigationItem.searchController = searchController
        
//        searchController.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign out",
//                                                                             style: .done,
//                                                                             target: self,
//                                                                             action: nil)
        navigationController?.pushViewController(searchController, animated: true)
    }
}
