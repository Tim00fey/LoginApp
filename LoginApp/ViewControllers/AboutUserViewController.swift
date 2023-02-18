//
//  AboutUserViewController.swift
//  LoginApp
//
//  Created by Тимофей Юдин on 18.02.2023.
//

import UIKit

final class AboutUserViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var birthdayLabel: UILabel!
    @IBOutlet var photo: UIImageView!
    @IBOutlet var navigationControl: UINavigationItem!
    
    
    let userInfo = InfoAboutUser.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Имя:   \(userInfo.name)"
        surnameLabel.text = "Фамилия:   \(userInfo.surname)"
        birthdayLabel.text = "Дата рождения:   \(userInfo.birthday.day).\(userInfo.birthday.month).\(userInfo.birthday.year)"
        
        navigationControl.title = userInfo.name
        
    }
    
    override func viewWillLayoutSubviews() {
        photo.layer.cornerRadius = photo.frame.width / 2
    }

}
