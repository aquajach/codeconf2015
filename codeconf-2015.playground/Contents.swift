//: Playground - noun: a place where people can play

import UIKit

/*:
1. Brazil
2. Vietnam
3. Colombia
*/

protocol Animal {
    var name: String {get}
}

protocol Movable {
    
}

protocol Swimmable: Animal, Movable {
    func swim()
}

extension Swimmable {
    func swim() {
        print("\(self.name) is 🏊🏊🏊")
    }
}

protocol Eggable: Animal {
    func layEgg()
}

extension Eggable {
    func layEgg() {
        print("\(self.name) is 🐣🐣🐣")
    }
}

extension Eggable where Self: Swimmable {
    func layEgg() {
        print("\(self.name) is 🐣🐣🐣 in 🌊🌊🌊")
    }
}

struct Fish: Animal, Swimmable, Eggable {
    var name: String
}

struct Whale: Animal, Swimmable {
    var name: String
}

struct Snake: Animal, Eggable {
    var name: String
}

let fish = Fish(name: "🐠")
fish.swim()
fish.layEgg()

let whale = Whale(name: "🐳")
whale.swim()

let snake = Snake(name: "🐍")
snake.layEgg()