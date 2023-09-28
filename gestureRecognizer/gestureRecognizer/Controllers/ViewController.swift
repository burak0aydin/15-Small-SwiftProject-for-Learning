//
//  ViewController.swift
//  gestureRecognizer
//
//  Created by Burak Aydın on 16.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //resime dokunabilirlik ekler
        imageView.isUserInteractionEnabled = true
        
        //resmin kaydırarak mı tıklanarak mı değiştirileceğini belirlersin
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        //yukarıdaki özelliği reme atarsın
        imageView.addGestureRecognizer(gestureRecognizer)
        
        imageView.image = UIImage(named: "istanbul")
    }
    
    @objc func changeImage () {
        
        if  imageView.image == UIImage(named: "ankara" ){
            imageView.image = UIImage(named: "istanbul" )
            label.text = "İstanbul"
        }else {
            imageView.image = UIImage(named: "ankara" )
            label.text = "Ankara"
        }
    }
}

