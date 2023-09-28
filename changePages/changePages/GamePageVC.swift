//
//  GamePageVC.swift
//  changePages
//
//  Created by Burak Aydın on 17.09.2023.
//

import UIKit

class GamePageVC: UIViewController {
    
    var personInGamePage : Persons?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let personData = personInGamePage {
            print("-------- Game Page --------")
            print("Person Name : \(personData.name!)")
            print("Person Age : \(personData.age!)")
            print("Person Height  : \(personData.height!)")
            print("Person married : \(personData.married!)")

        }

        
    }
    @IBAction func BackButton(_ sender: Any) {
        //return to previous page
        //navigationController?.popViewController(animated: true)
        
        //return to main page
        navigationController?.popToRootViewController(animated: true)
    }
    

    @IBAction func FinishButton(_ sender: Any) {
        //switch to the another page
        performSegue(withIdentifier: "SwitchResultPageVC", sender: nil)
    }
    
}
