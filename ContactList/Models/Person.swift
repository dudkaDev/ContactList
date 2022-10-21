//
//  Person.swift
//  ContactList
//
//  Created by Андрей Абакумов on 18.10.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let number: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    var rows: [String] {
        [number, email]
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        let numbers = DataStore.shared.numbers.shuffled()
        
        let iterationCount = names.count
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                number: numbers[index]
            )
            persons.append(person)
        }
        return persons
    }
}

