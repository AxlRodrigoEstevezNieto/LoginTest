//
//  LoginViewController.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}

extension LoginViewController {
    
    func setupView () {
        loginButton.layer.cornerRadius = 15
    }
}
