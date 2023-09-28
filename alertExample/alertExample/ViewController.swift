//
//  ViewController.swift
//  alertExample
//
//  Created by Burak Aydın on 17.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func alertButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        let okeyAlert = UIAlertAction(title: "Okey", style: .default) { action in
            print("selected okey")
        }
        
        let closeAlert = UIAlertAction(title: "Close", style: .destructive) { action in
            print("selected close")
        }
        
        alertController.addAction(okeyAlert)
        alertController.addAction(closeAlert)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func actionSheetButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        
        let okeyAlert = UIAlertAction(title: "Okey", style: .cancel) { action in
            print("selected okey")
        }
        
        let closeAlert = UIAlertAction(title: "Close", style: .destructive) { action in
            print("selected close")
        }
        
        alertController.addAction(okeyAlert)
        alertController.addAction(closeAlert)
        
        self.present(alertController, animated: true)
        
    }
    
    @IBAction func specialAlertButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        alertController.addTextField { UITextField in
            UITextField.placeholder = "Enter Data"
            UITextField.keyboardType = .default
            UITextField.isSecureTextEntry = true
        }
        
        
        let okeyAlert = UIAlertAction(title: "Save", style: .cancel) { action in
            let alertTextField = alertController.textFields![0] as UITextField
            
            if let receivedData = alertTextField.text {
                self.textLabel.text = receivedData
            }
        }
        
        alertController.addAction(okeyAlert)
        
        self.present(alertController, animated: true)
        
    }
    
}

