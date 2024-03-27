//
//  SceneDelegate.swift
//  SOLIDTemplate
//
//  Created by Levon Shaxbazyan on 26.03.24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = TasksViewController()
        window.makeKeyAndVisible()
        self.window = window
    }
}
