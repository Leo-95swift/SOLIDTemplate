import Foundation

//protocol Soundable {
//    func makeSound(sound: String)
//}
//
//class Animal: Soundable {
//
//    let name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func makeSound(sound: String) {
//        print(sound)
//    }
//}
//
//let dog = Animal(name: "Dog")
//dog.makeSound(sound: "Woof")
//
//let cat = Animal(name: "Cat")
//cat.makeSound(sound: "Meow")



//protocol Sizeable {
//    func calculateSize() -> CGSize
//}
//
//struct Circle: Sizeable {
//    let radius: CGFloat
//    
//    func calculateSize() -> CGSize {
//        let diameter = radius * 2
//        return CGSize(width: diameter, height: diameter)
//    }
//}
//
//struct Rectangle: Sizeable {
//    let width: CGFloat
//    let height: CGFloat
//    
//    func calculateSize() -> CGSize {
//       
//        return CGSize(width: width, height: height)
//    }
//}
//
//class SizePrint {
//                      
//    func printSize(of figure: Sizeable) {
//        print(figure.calculateSize())
//    }
//          
//}
