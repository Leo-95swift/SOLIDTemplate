//: [Previous](@previous)

import Foundation

// SRP
// каждый класс у нас должен отвичать за одну цель
// должна быть только одна причина для изменения этого класса

class NetworkManager {
    func fetchData(url: URL) {
        // Запрос к API
    }

    func updateUI() {
        // обновляет пользовательский интерфейс
    }
}

// Проблема
/*
 Получается что наш класс по названию NetworkManager кроме своей
 основной работы занимается еще и обновлением UI,
 что протеворечит принципу единой ответственности
 */

// Решение

/*
 создаем новый класс который будет отвечать за обновление UI
 и перетаскиваем наш метод туда
 */

class NetworkManager {
    func fetchData(url: URL) {
        // Запрос к API
    }
}

class MainView {
    func updateUI() {
        // обновляет пользовательский интерфейс
    }
}
