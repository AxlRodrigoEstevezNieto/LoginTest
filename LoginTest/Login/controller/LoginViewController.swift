//
//  LoginViewController.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import UIKit
import SSSpinnerButton
import TextFieldEffects

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userNameEmailLabel: HoshiTextField!
    @IBOutlet weak var passwordLabel: HoshiTextField!
    @IBOutlet weak var loginButton: SSSpinnerButton!
    
    
    private let model = LoginRouter()
    private var userLogin = KeyAccessUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        model.delegate = self
    }
    
    
    @IBAction func loginAction(_ sender: Any) {
        userLogin.email = userNameEmailLabel.text
        userLogin.userName = userNameEmailLabel.text
        userLogin.password = passwordLabel.text
        loginButton.startAnimate(spinnerType: .ballClipRotate, spinnercolor: .white, spinnerSize: 25, complete: {
            self.model.evalAccessKey(accessKey: self.userLogin)
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
