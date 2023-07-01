//
//  UsersTableViewControllerDelegate.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import UIKit

extension UsersTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
