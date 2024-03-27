//: [Previous](@previous)

import Foundation

// ISP
// лучше иметь много разделенных интерфейсов, чем один общий
// разделять надо исходя из логики методов

protocol Worker {
    func work()
    func eat()
}

class Robot: Worker {
    func work() {
        // Робот работает
    }

    func eat() {
        fatalError("Робот не может кушать")
    }
}

// Проблема
/*
 в нашем протоколе есть два метода которые должны реализовать те кто подпысивается под этот протокол
 но скажем робот не может есть, хотя должен реализовать метоф eat()
 */

// Решение
     
/*
 отделяем логику work от логики eat в новый отдельный протокол
 */

protocol Worker {
    func work()
}

protocol Eater {
    func eat()
}

class Robot: Worker {
    func work() {
        // Робот работает
    }
}

class Human: Worker, Eater {
    func work() {
        print("I'm working")
    }

    func eat() {
        print("I'm eating")
    }
}
