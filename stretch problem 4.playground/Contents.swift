//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let workingDictionary = ["nameKey": "Eva", "ageKey": 21, "favMovieKey": "the Godfather"]
let brokenDictionary = ["nameKey": "Pablo", "ageKey": 4]


class Person {
    
    let kName = "nameKey"
    let kAge = "ageKey"
    let kMovie = "favMovieKey"

    var name: String?
    var age: Int?
    var favMovie: String?
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary[kName] as? String,
            let age = dictionary[kAge] as? Int,
            favMovie = dictionary[kMovie] as? String else {
                return nil
            }
        self.name = name
        self.age = age
        self.favMovie = favMovie
    }
}


let personOne = Person(dictionary: workingDictionary)
let personTwo = Person(dictionary: brokenDictionary)


    
