//
//  DataManager.swift
//  ContactsApp
//
//  Created by Дмитрий Кузнецов on 04/11/2020.
//  Copyright © 2020 Дмитрий Кузнецов. All rights reserved.
//

import Foundation

class DataManager {
    
    let names = ["John",
                 "Aaron",
                 "Tim",
                 "Ted",
                 "Steven",
                 "Bob",
                 "Michael"]
    
    let surnames = ["Smith",
                    "Dow",
                    "Isaacson",
                    "Pennyworth",
                    "Jankins",
                    "Phelps",
                    "Lochte"]
    
    let phones = ["9109111298",
                  "9109111291",
                  "91091112123",
                  "9109111543",
                  "9109112321",
                  "9109167892",
                  "9109161122"]
    //email генерируется на основе выбранных имен и фамилий
    
    func newPersons() -> [Person]? {
        var persons: [Person] = []
        
        var names = self.names
        var surnames = self.surnames
        
        let personCount = min(self.names.count,
                              self.surnames.count,
                              self.phones.count)
        
        for _ in 0...personCount - 1 {
            guard
                let name = names.randomElement(),
                let surname = surnames.randomElement(),
                let phone = phones.randomElement()
                else { return nil }
            persons.append(Person(name: name,
                                  surname: surname,
                                  phone: phone,
                                  email: "\(surname)\(name)@mail.ru"))
            names.remove(at: names.firstIndex(of: name)!)
            surnames.remove(at: surnames.firstIndex(of: surname)!)
        }
        return persons
    }
}
