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
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore().names.shuffled()
        let surnames = DataStore().surnames.shuffled()
        let emails = DataStore().emails.shuffled()
        let numbers = DataStore().numbers.shuffled()
        
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

