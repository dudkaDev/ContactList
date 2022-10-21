//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Андрей Абакумов on 19.10.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }
    
    private func setupControllers() {
        let contactListVC = viewControllers?.first as? ContactListViewController
        let detailListVC = viewControllers?.last as? DetailListViewController
        
        let persons = Person.getContactList()
        contactListVC?.persons = persons
        detailListVC?.persons = persons
    }
}
