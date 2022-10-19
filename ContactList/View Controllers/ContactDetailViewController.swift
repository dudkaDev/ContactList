//
//  ContactDetailViewController.swift
//  ContactList
//
//  Created by Андрей Абакумов on 18.10.2022.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        numberLabel.text = "Phone: \(person.number)"
        emailLabel.text = "E-mail: \(person.email)"
    }
}
