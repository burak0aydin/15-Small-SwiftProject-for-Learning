//
//  Persons.swift
//  changePages
//
//  Created by Burak Aydın on 17.09.2023.
//

import Foundation

class Persons {
    
    var name : String?
    var age : Int?
    var height : Double?
    var married : Bool?
    
    init() {
        
    }
    
    init(name: String? = nil, age: Int? = nil, height: Double? = nil, married: Bool? = nil) {
        self.name = name
        self.age = age
        self.height = height
        self.married = married
    }
}
