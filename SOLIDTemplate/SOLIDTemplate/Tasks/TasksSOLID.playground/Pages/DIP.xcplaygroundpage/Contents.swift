//: [Previous](@previous)

import Foundation

// DIP
// модули высшего уровня не долъны зависить от модулей нижнего уровня,
// оба должни зависить от обстракций

// обстракции не должни зависить от деталей, детали должны зависеть от обстракций

class LightBulb {
    func turnOn() {
        // включает свет
    lamp.on()
    }

    func turnOff() {
        // включает свет
    lamp.off()
    }
}

class Switch {
    let bulb: LightBulb

    init(bulb: LightBulb) {
        self.bulb = bulb
    }

    func toggle() {
        bulb.turnOn()
    }
}

// Проблема
/*
 в нашем классе switch (высшего уровня) есть строгая связь с LightBulb
 и если нам понадобытся поменять эту лампочку на другую то мы не сможем
 сделать это без множественных изменений в классе Switch
 в идеале надо устроить свой код так, чтобы при изменении детали ( скажем лампочки) мы не трогалы сам класс
 */

// Решение
     
/*
 меняем конкретную лампочки на абстракцию лампочки и дальше можем
 использовать любую лампочку которая соответствует протоколу
 */

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
