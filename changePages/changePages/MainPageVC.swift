//
//  ViewController.swift
//  changePages
//
//  Created by Burak Aydın on 17.09.2023.
//

import UIKit

class MainPageVC: UIViewController {

    @IBOutlet weak var mainPageLabel: UILabel!
    
    // Uygulama ilk açıldığında 1 kez çalışır
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad is working")

    }
    
    //Sayfa her göründüğünde çalışır
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear is working")
    }

    //Sayfa her görünmez olduğunda çalışır
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear is working")

    }

    @IBAction func doItButton(_ sender: Any) {
        mainPageLabel.text = "Hello!"
    }
    
    @IBAction func startButton(_ sender: Any) {
        let person = Persons(name: "Ahmet", age: 23, height: 1.78, married: false)
        //Ne göndereceğimizi ve nereye göndereceğimizi belirtiyoruz
        performSegue(withIdentifier: "SwitchGamePageVC", sender: person)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SwitchGamePageVC" {

            //belirtilertilen veriyi göndereceğimiz dataya eşitliyoruz
            if let data = sender as? Persons {
                //segueye  bilgileri  hangi sayfaya göndereceğini belirttik
                let destinationVC = segue.destination as! GamePageVC
                
                //göndereceğimiz veriyi diğer sayfadaki değere eşitliyoruz
                destinationVC.personInGamePage = data
            }
        }
    }
    @IBAction func addButton(_ sender: Any) {
        print("addButton is working")
    }
    
    @IBAction func saveButton(_ sender: Any) {
        print("saveButton is working")
    }
}

