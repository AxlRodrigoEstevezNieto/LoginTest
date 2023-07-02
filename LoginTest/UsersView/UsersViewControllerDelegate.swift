//
//  UsersTableViewControllerDelegate.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import UIKit

extension UsersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(UserCardTableViewCell.self)") as? UserCardTableViewCell else {
            return UITableViewCell()
        }
        cell.setData(user: users[indexPath.row])
        return cell
    }
    
    
}
