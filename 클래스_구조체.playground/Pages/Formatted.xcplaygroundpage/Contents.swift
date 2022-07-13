import UIKit
import Foundation

let date = Date()

//print(date)
//print(date.formatted())
//print(date.formatted(date: .complete, time: .complete))
//print(date.formatted(date: .abbreviated, time: .omitted))
//print(date.formatted(date: .omitted, time: .shortened))
//print(date.formatted(date: .long, time: .standard))
//print(date.formatted(date: .numeric, time: .standard))


let longNum = 123441234123485858

print(longNum.formatted())


class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
