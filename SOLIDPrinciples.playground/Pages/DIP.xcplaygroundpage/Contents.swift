//: [Previous](@previous)

import Foundation

protocol Switchable {
    func turnOn()
    func turnOff()
}

class LightBulb: Switchable {
    func turnOn() {
        // включает свет
        // lamp.on()
    }

    func turnOff() {
        // включает свет
        // lamp.off()
    }
}

class LedBulb: Switchable {
    func turnOn() {
        // включает свет
        // lamp.on()
    }

    func turnOff() {
        // включает свет
        // lamp.off()
    }
}

class ThirdBulb: Switchable {
    func turnOn() {
        print("Вкл")
    }
    
    func turnOff() {
        print("Выкл")
    }
    
}

class MySwitch {
    let bulb: Switchable

    init(bulb: Switchable) {
        self.bulb = bulb
    }

    func toggle() {
        bulb.turnOn()
    }
}

let lightBulb = LightBulb()
let ledBulb = LedBulb()

let mySwitch = MySwitch(bulb: ledBulb)
mySwitch.toggle()
