//
//  LoginViewControllerDelegate.swift
//  LoginTest
//
//  Created by Axl Estevez on 01/07/23.
//

import UIKit

extension LoginViewController: loginProtocol {
    
    func onSusses(response: resultsStruct) {
        DispatchQueue.main.async {
            self.loginButton.stopAnimatingWithCompletionType(completionType: .success, complete: {
                let viewController = UsersViewController(users: response.results)
                viewController.modalPresentationStyle = .overFullScreen
                self.present(viewController, animated: true)
            })
        }
    }
    
    func onError(error: String) {
        
        DispatchQueue.main.async {
            self.loginButton.stopAnimatingWithCompletionType(completionType: .error, complete: {
                self.makeAlert(error: error, type: "error")
            })
        }
    }
    
    func loginError(error: String) {
        
        DispatchQueue.main.async {
            self.loginButton.stopAnimatingWithCompletionType(completionType: .error, complete: {
                self.makeAlert(error: error, type: "Error")
            })
        }
    }
}
