//
//  DetailContactsViewController.swift
//  ContactsApp
//
//  Created by Дмитрий Кузнецов on 04/11/2020.
//  Copyright © 2020 Дмитрий Кузнецов. All rights reserved.
//

import UIKit

class DetailContactsViewController: UITableViewController {
    
    var persons: [Person]!
    
    private let fontSize:CGFloat = 18
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: "SectionView")
    }
    
    // MARK: - Customization section view
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "SectionView")
        let person = persons[section]
        
        guard let label = headerView?.textLabel else { return nil }
        label.font = .italicSystemFont(ofSize: fontSize)
        label.textColor = .blue
        label.text = "\(person.surname) \(person.name)"
        
        return headerView
    }
    
    // MARK: - Customization cells in section
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "\(person.phone)"
            cell.imageView?.image = UIImage(systemName: "phone.circle")
        case 1:
            cell.textLabel?.text = "\(person.email)"
            cell.imageView?.image = UIImage(systemName: "tray")
        default:
            print("Some error")
        }
        cell.textLabel?.font = .italicSystemFont(ofSize: fontSize)
        return cell
    }
}
