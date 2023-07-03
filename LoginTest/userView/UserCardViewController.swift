//
//  UserCardViewController.swift
//  LoginTest
//
//  Created by Axl Estevez on 02/07/23.
//

import UIKit
import Kingfisher

class UserCardViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var avatarImageUser: UIImageView!
    @IBOutlet weak var userFullNameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var cityTitleLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var estadoTitleLabel: UILabel!
    @IBOutlet weak var estadoLabel: UILabel!
    @IBOutlet weak var paisTitleLabel: UILabel!
    @IBOutlet weak var paisLabel: UILabel!
    
    @IBOutlet weak var edadTitle: UILabel!
    @IBOutlet weak var edadLabel: UILabel!
    
    var user: usuario
    var userFullName = ""
    
    init(user: usuario) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    
    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    func setupView() {
        backButton.setTitle("", for: .normal)
        makeFullName(nameUser: (user.name)!)
        userFullNameLabel.text = userFullName
        emailLabel.text = user.email!
        avatarImageUser.layer.cornerRadius = 25.0
        setupImage(urlString: (user.picture.large)!)
        
        cityLabel.text = user.location.city
        estadoLabel.text = user.location.state
        paisLabel.text = user.location.country
        
        edadLabel.text = "\(user.dob.age!) años"
    }
    
    func setupImage(urlString: String) {
        let url = URL(string: urlString)
        avatarImageUser.kf.setImage(with: url)
    }
    
    func makeFullName(nameUser: usuarioNombre) {
        let name = nameUser.title
        let fisrtName = nameUser.first
        let last = nameUser.last
        userFullName = "\(name!) \(fisrtName!) \(last!)"
    }
    
}
