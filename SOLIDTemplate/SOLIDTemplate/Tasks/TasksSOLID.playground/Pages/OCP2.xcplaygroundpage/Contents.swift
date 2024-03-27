//: [Previous](@previous)

import Foundation

// OCP
// сущности дольны быть открыти для расширения
// но закрыти для модификации

struct Circle {
   let radius: CGFloat
}

struct Rectangle {
   let width: CGFloat
   let height: CGFloat
}

class SizePrinter {

    func printSize(of circle: Circle) {
        let diameter = circle.radius * 2
        print(CGSize(width: diameter, height: diameter)
    }

    func printSize(of rect: Rectangle) {
        print(CGSize(width: rect.width, height: rect.height)
    }
}


// Проблема
/*
 Каждый раз когда мы захотим печатать размер нового предмета
 нам надо будет в классе SizePrinter создать новый метод для этого,
 а это протеворечит принципу открытости и закрытости
 */

// Решение
    
/*
 меняем конкретные фигуры на абстрактную фигуру у которого есть размер
 теперь каждый раз когда мы будем создовать новый придмет
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
