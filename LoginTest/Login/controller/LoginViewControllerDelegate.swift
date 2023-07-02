//
//  LoginViewControllerDelegate.swift
//  LoginTest
//
//  Created by Axl Estevez on 01/07/23.
//

import UIKit

extension LoginViewController: loginProtocol {
    
    func onSusses(response: resultsStruct) {
        print(response.results!)
        
        DispatchQueue.main.async {
            self.loginButton.stopAnimatingWithCompletionType(completionType: .success, complete: {
                print("Se cumplio")
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
}
