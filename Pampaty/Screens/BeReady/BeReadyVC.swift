import UIKit

class BeReadyVC: ViewControllerWithTable {
	override func setProperties() {
		screenVM = BeReadyVM()
		button = Button(title: "Старт", backgroundColor: .systemBlue)
		title = "Приготовьтесь"
	}

	@objc override func onButtonTouch() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(GameVC(), animated: true)
	}
}
