//: [Previous](@previous)

import Foundation

// OCP
// сущности дольны быть открыти для расширения
// но закрыти для модификации

class Animal {
    let name: String

    init(name: String) {
        self.name = name
    }

    func makeSound() {
        if name == "Dog" {
            print("Woof")
        } else if name == "Cat" {
            print("Meow")
        }
    }
}

// Проблема
/*
 Получается что в нашем классе по названию Animal есть функция,
 которая будет менятся кашдый раз когда мы захотим создать новое животное,
 что протеворечит принципу открытости и закрытости
 */

// Решение

/*
 создаем абстракцию и перетаскываем реализацию этого метода туда
 теперь каждый раз когда мы будем создовать новое животное
 нам не придется ничего менть в нашем классе
 */

protocol Soundable {
    func makeSound(sound: String)
}

class Animal: Soundable {

    let name: String

    init(name: String) {
        self.name = name
    }

    func makeSound(sound: String) {
        print(sound)
    }
}

let dog = Animal(name: "Dog")
dog.makeSound(sound: "Woof")

let cat = Animal(name: "Cat")
cat.makeSound(sound: "Meow")
