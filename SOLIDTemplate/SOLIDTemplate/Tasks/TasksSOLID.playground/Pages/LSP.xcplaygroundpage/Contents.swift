//: [Previous](@previous)

import Foundation

// LSP
// классы наследники не дольны протеворечить поведению исходных классов
// их поведение дольно быть предсказуемым

class Bird {
    func fly() {
        // Реализация полета
    }
}

class Penguin: Bird {
    override func fly() {
        fatalError("Penguins can't fly!")
    }
}

let myBird: Bird = Penguin()
myBird.fly()

// Проблема
/*
 пингвин наследуется от птицы, но она не может летать
 а исходя из класса Bird все птицы могут летать
 получается что пингвин протеворечит поведению птицы
 */

// Решение
    
/*
 отделяем рализацию полета делая ее опциональной чтобы когда создаем
 новую птицу мы могли решить может ли она летать или нет
 */

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
