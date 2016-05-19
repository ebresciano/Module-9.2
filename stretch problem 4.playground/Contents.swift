//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let workingDictionary = ["nameKey": "Eva", "ageKey": 21, "favMovieKey": "the Godfather"]
let brokenDictionary = ["nameKey": "Pablo", "ageKey": 4]


class Person {
    
    let "nameKey" = name
    let "ageKey" = age
    let "favMovieKey" = favMovie

    var name: String?
    var age: Int?
    var favMovie: String?
    
    init?(dictionary [String: AnyObject]) {
        
        self.name = name
        self.age = age
        self.favMovie = favMovie

        
    }
    
}
    guard let name = "nameKey", age = "ageKey", favMovie = "favMovieKey"
        else return nil 