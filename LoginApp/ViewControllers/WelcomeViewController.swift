//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Тимофей Юдин on 18.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    let user = InfoAboutUser.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = "Welcome, \(user.name)"
    }
    

}
