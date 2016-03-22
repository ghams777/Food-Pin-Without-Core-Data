//
//  Restaurant.swift
//  FoodPin
//
//  Created by Admin on 3/22/16.
//  Copyright © 2016 Morra. All rights reserved.
//

import Foundation

class Restaurant {
//    properties and methods
    
//    Atribut / properties
    var name: String = ""
    var type: String = ""
    var location: String = ""
    var image: String = ""
    var isVisited: Bool = false
    
//    Constructor default
    init(name: String, type: String, location: String, image: String, isVisited: Bool) {
        
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.isVisited = isVisited
        
    }
    
    
    
}
