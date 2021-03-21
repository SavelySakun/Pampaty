//
//  SceneDelegate.swift
//  Pampaty
//
//  Created by Savely Sakun on 03.02.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

	var window: UIWindow?
	static let shared = SceneDelegate()
	let navigationController = RootNavigation()

	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let scene = (scene as? UIWindowScene) else { return }

		let window = UIWindow(windowScene: scene)
		let startViewController = GameSettingsVC()
		navigationController.viewControllers.append(startViewController)

		window.rootViewController = navigationController
		self.window = window
		window.makeKeyAndVisible()
	}

}
