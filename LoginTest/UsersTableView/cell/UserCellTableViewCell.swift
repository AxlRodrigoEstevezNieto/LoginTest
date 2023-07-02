//
//  UserCardTableViewCell.swift
//  LoginTest
//
//  Created by aestevezn on 01/07/23.
//

import UIKit
import Kingfisher

protocol sendUserFromCellProtocol {
    func sendInfoUser(user: usuario)
}

class UserCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userInfoLaunchButton: UIButton!
    @IBOutlet weak var avatarUser: UIImageView!
    @IBOutlet weak var userFullNameLabel: UILabel!
    @IBOutlet weak var emailUserLabel: UILabel!
    
    
    var usuarioObj: usuario!
    var userFullName: String = ""

    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }
    
    func setData(user: usuario) {
        self.usuarioObj = user
        makeFullName(nameUser: user.name)
        setupImage(urlString: user.picture.thumbnail)
        userFullNameLabel.text = userFullName
        emailUserLabel.text = user.email!
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
    
    func setupImage(urlString: String) {
        let url = URL(string: urlString)
        avatarUser.kf.setImage(with: url)
    }
    
    
    
}
