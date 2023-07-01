//
//  Router.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import Foundation

protocol loginProtocol {
    func onSusses()
    func onError()
}

class Router {
    var urlString = ""
    var body: String?
    var manager: loginProtocol?
    
    func configuration() {
        
    }
}
