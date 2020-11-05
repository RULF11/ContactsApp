//
//  DetailInfoViewController.swift
//  ContactsApp
//
//  Created by Дмитрий Кузнецов on 04/11/2020.
//  Copyright © 2020 Дмитрий Кузнецов. All rights reserved.
//

import UIKit

class DetailInfoViewController: UIViewController {
    
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phone
        emailLabel.text = person.email
        navigationItem.title = "\(person.surname) \(person.name)"
        navigationItem.largeTitleDisplayMode = .never
    }
}
