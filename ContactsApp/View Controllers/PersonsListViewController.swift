//
//  PersonsListViewController.swift
//  ContactsApp
//
//  Created by Дмитрий Кузнецов on 04/11/2020.
//  Copyright © 2020 Дмитрий Кузнецов. All rights reserved.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    var persons: [Person]!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.row]
        cell.textLabel?.text = "\(person.surname) \(person.name)"
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let detailInfoVC = segue.destination as! DetailInfoViewController        
        guard let selectedCell = tableView.indexPathForSelectedRow
            else { return }
        detailInfoVC.person = persons[selectedCell.row]
    }
}
