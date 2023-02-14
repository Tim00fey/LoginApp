//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Тимофей Юдин on 14.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(name ?? "")!"
        
    }
    
    
    

}
