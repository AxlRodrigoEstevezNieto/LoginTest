//
//  UserCardTableViewCell.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import UIKit

class UserCardTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userInfoLaunchButton: UIButton!
    @IBOutlet weak var avatarUser: UIImageView!
    @IBOutlet weak var userFullNameLabel: UILabel!
    @IBOutlet weak var emailUserLabel: UILabel!
    
    
    var usuarioObj: usuario!
    var userFullName: String = ""

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(user: usuario) {
        makeFullName(nameUser: user.name)
        userFullNameLabel.text = userFullName
        emailUserLabel.text = usuarioObj.email
    }
    
    func setupCell() { 
        userInfoLaunchButton.setTitle("", for: .normal)
    }
    
    func makeFullName(nameUser: usuarioNombre) {
        let name = nameUser.title
        let fisrtName = nameUser.first
        let last = nameUser.last
        userFullName = "\(name!) \(fisrtName!) \(last!)"
    }
    
}
