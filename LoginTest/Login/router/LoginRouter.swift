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
    func loginError(error: String)
}

class LoginRouter {
    
    var delegate: loginProtocol!
    var users: [usuario] = []
    
    func evalAccessKey(accessKey: KeyAccessUser) {
        let urlString = "https://randomuser.me/api?results=20&seed=smartstc&nat=ES"
        let url = URL(string: urlString)!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if error != nil {
                self.delegate?.onError(error: "ha ocurrido un error")
            }
            
            if let data = data {
                if let userList = try? JSONDecoder().decode(resultsStruct.self, from: data) {
                    self.users = userList.results!
                    if self.isAccessKeys(accessKey: accessKey) {
                        self.delegate?.onSusses(response: userList)
                    } else {
                        self.delegate?.loginError(error: "Error al ingresar. Revisa tus datos")
                    }
                } else {
                    self.delegate.onError(error: "Ha ocurriodo un error interno. Intentalo más tarde")
                }
            }
        }
        
        task.resume()
    }
    
    func isAccessKeys(accessKey: KeyAccessUser) -> Bool{
        var isOk = false
        if users.count > 0 {
            for user in users {
                if (accessKey.email == user.email || accessKey.userName == user.login.username) && (accessKey.password == user.login.password) {
                    isOk = true
                    break
                }
            }
        }
        
        return isOk
    }
}
