//: [Previous](@previous)

import Foundation

protocol Fliable {
    func fly()
}

class Bird {
    func sing() {
        
    }
}

class Swift: Bird, Fliable {
    func fly() {
        print("Я летаю, я же не пингвин")
    }
    
    override func sing() {
        print("Я пою как могу")
    }
}

class Penguin: Bird {
    
    override func sing() {
        print("Я пою как пингвин")
    }
}

let penguin = Penguin()
penguin.sing()


