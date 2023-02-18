//
//  ViewController.swift
//  LoginApp
//
//  Created by Тимофей Юдин on 14.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let user = Login(username: "User", password: "Password")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTF.text = user.username
        passwordTF.text = user.password
    }
    
    // MARK: IBActions
    @IBAction func loginButtonTapped() {
        guard let name = nameTF.text else { return }
        guard let password = passwordTF.text else { return }
        
        if name == user.username && password == user.password {
            performSegue(withIdentifier: "goToWelcomeScreen", sender: nil)
        } else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password",
                textField: passwordTF
            )
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is User 😉", textField: nil)
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(
            withTitle: "Oops!",
            andMessage: "Your password is Password 😉",
            textField: nil
        )
    }
    
    
    
}

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = "" 
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

