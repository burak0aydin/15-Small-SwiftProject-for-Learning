//
//  ViewController.swift
//  calculator
//
//  Created by Burak Aydın on 8.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var result = 0

    @IBOutlet weak var firstText: UITextField!
    
    @IBOutlet weak var secondText: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var errorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func additionButton(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber + secondNumber
                resultLabel.text = String(result)
            }
            else {errorMessage.text = "Please enter a valid value"
            }
        }
        else {errorMessage.text = "Please enter a valid value"
        }
    }
    
    
    @IBAction func subtractionButton(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber - secondNumber
                resultLabel.text = String(result)
            }
            else {errorMessage.text = "Please enter a valid value"
            }
        }
        else {errorMessage.text = "Please enter a valid value"
        }
    }
    
    
    @IBAction func multiplicationButton(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber * secondNumber
                resultLabel.text = String(result)
            }
            else {errorMessage.text = "Please enter a valid value"
            }
        }
        else {errorMessage.text = "Please enter a valid value"
        }
    }
    
    
    @IBAction func divisionButton(_ sender: Any) {
        if let firstNumber = Int(firstText.text!) {
            if let secondNumber = Int(secondText.text!) {
                
                result = firstNumber / secondNumber
                resultLabel.text = String(result)
            }
            else {errorMessage.text = "Please enter a valid value"
            }
        }
        else {errorMessage.text = "Please enter a valid value"
        }
    }
    
}

