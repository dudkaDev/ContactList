//
//  DetailListViewController.swift
//  ContactList
//
//  Created by Андрей Абакумов on 19.10.2022.
//

import UIKit

class DetailListViewController: UITableViewController {

    var persons: [Person] = []
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.image = UIImage.init(systemName: "phone")
            content.text = person.number
        default:
            content.image = UIImage.init(systemName: "tray")
            content.text = person.email
        }
        cell.contentConfiguration = content
        return cell
    }
}
