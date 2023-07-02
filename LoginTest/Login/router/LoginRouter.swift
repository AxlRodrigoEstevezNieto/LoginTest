//
//  Router.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import Foundation

protocol loginProtocol {
    func onSusses(response: resultsStruct)
    func onError(error: String)
}

class LoginRouter {
    var delegate: loginProtocol!
    
    func getUsers() {
        let urlString = "https://randomuser.me/api?results=20&seed=smartstc&nat=ES"
        let url = URL(string: urlString)!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil {
                self.delegate?.onError(error: "ha ocurrido un error")
            }
            
            if let data = data {
                let str = String(decoding: data, as: UTF8.self)
                print("Response: \(str)")
                if let userList = try? JSONDecoder().decode(resultsStruct.self, from: data) {
                    self.delegate?.onSusses(response: userList)
                } else {
                    self.delegate.onError(error: "Ha ocurriodo un error decodificando datos")
                }
            }
        }
        
        task.resume()
    }
}
