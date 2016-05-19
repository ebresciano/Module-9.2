//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"


class Car {
    
    var make: String
    var model: String
    var year: Int
    
    var fullDescription: String {
        return "\(make), \(model), \(year)"
    }
    
    var dictionaryRepresentation: [String: AnyObject] {
        return [:]
        
    }
    
    
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    
}
    }

let myCar = Car(make: "Honda", model: "CRX", year: 1990)

myCar.year = 1990

print(myCar.fullDescription)