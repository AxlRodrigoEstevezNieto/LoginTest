//
//  UsersViewController.swift
//  LoginTest
//
//  Created by aestevezn on 02/07/23.
//

import UIKit

class UsersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var users: [usuario] = []
    
    init(users: [usuario]) {
        self.users = users
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        configureTableView()
    }
    
    func configureTableView() {
        let nibName = UINib(nibName: "\(UserCellTableViewCell.self)", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "\(UserCellTableViewCell.self)")
        tableView.rowHeight = 106
        tableView.reloadData()
    }

}
