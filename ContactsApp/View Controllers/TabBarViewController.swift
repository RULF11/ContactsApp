//
//  TabBarViewController.swift
//  ContactsApp
//
//  Created by Дмитрий Кузнецов on 04/11/2020.
//  Copyright © 2020 Дмитрий Кузнецов. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        persons = DataManager().newPersons()
        transmitData()
    }
    
    private func transmitData() {
        let personsListVC = viewControllers?.first as! PersonsListViewController
        personsListVC.persons = persons
        
        let detailContactsVC = viewControllers?.last as! DetailContactsViewController
        detailContactsVC.persons = persons
    }
}
