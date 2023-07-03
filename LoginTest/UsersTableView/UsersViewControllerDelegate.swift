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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(UserCellTableViewCell.self)") as? UserCellTableViewCell else {
            return UITableViewCell()
        }
        cell.setData(user: users[indexPath.row])
        cell.delegate = self
        return cell
    }
}

extension UsersViewController: sendUserFromCellProtocol{
    func sendInfoUser(user: usuario) {
        let vc = UserCardViewController(user: user)
        vc.modalPresentationStyle = .overFullScreen
        self.present(vc, animated: true)
    }
}
