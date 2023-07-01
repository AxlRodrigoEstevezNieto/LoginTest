//
//  UsersTableViewController.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import UIKit

class UsersTableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var usersArray: [usuario] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}
