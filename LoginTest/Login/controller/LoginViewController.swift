//
//  LoginViewController.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import UIKit
import SSSpinnerButton

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var loginButton: SSSpinnerButton!
    
    private let model = LoginRouter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        model.delegate = self
    }
    
    
    @IBAction func loginAction(_ sender: Any) {
        loginButton.startAnimate(spinnerType: .ballClipRotate, spinnercolor: .white, spinnerSize: 25, complete: {
            self.model.getUsers()
        })
    }
    
}

extension LoginViewController {
    
    func setupView () {
        loginButton.layer.cornerRadius = 15
    }
    
    func makeAlert(error: String, type: String) {
        let alert = UIAlertController(title: type, message: error, preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(actionAlert)
        self.present(alert, animated: true)
    }
}
