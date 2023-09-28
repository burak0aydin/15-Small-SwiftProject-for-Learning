//
//  ViewController.swift
//  UIDesignPizzaApp
//
//  Created by Burak Aydın on 16.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Pizza"
        // yukarıda saat wifi, pil işaretini beyaz yapar temayı siyah yaptığımız için
        navigationController?.navigationBar.barStyle = .black
        
        //navigationbarı kırmızı renk yaptık
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "MainColor")
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "WritingColor")!,
                                          .font: UIFont(name: "DMSerifDisplay-Italic", size: 28)!]

        // tüm telefonlara etkilemesi için hepsini ekledik
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

    }


}

