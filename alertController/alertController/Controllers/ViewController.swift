//
//  ViewController.swift
//  alertController
//
//  Created by Burak Aydın on 16.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if (emailTextField.text == "") { // Email not entered
            
            presentAlert(
                title: "Warning!",
                message: "Email not entered",
                preferredStyle: .alert,
                defaultButtonTittle: "Okey",
                defaultButtonStyle: .default)
            
            
        } else if (passwordTextField.text == "") { // Password not entered
            
            presentAlert(
                title: "Warning!",
                message: "Password not entered",
                preferredStyle: .alert,
                defaultButtonTittle: "Okey",
                defaultButtonStyle: .default)
            
        } else if (passwordTextField.text != password2TextField.text) { //passwords do not match
            
            presentAlert(
                title: "Warning!",
                message: "Passwords do not match",
                preferredStyle: .alert,
                defaultButtonTittle: "Okey",
                defaultButtonStyle: .default)
            
        } else {
            
            presentAlert(
                title: "Congratulations!",
                message: "Your account has been created.",
                preferredStyle: .alert,
                defaultButtonTittle: "Okey",
                defaultButtonStyle: .default)
        }
        
    }
    
    func presentAlert (
        title : String?,
        message : String?,
        preferredStyle:UIAlertController.Style,
        defaultButtonTittle : String,
        defaultButtonStyle : UIAlertAction.Style?,
        defaultButtonHandler : ((UIAlertAction)  -> Void)? = nil) {
            
            let alertController = UIAlertController(
                title: title,
                message: message,
                preferredStyle: preferredStyle)
            
            let defaultButton = UIAlertAction(
                title: defaultButtonTittle,
                style: defaultButtonStyle ?? .default,
                handler: defaultButtonHandler)
            alertController.addAction(defaultButton)
            
            present(alertController,animated: true)
        }
    
}

