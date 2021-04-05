import UIKit

class BeReadyVC: ViewControllerWithTable {
	override func setProperties() {
		self.screenVM = BeReadyVM()
		self.button = Button(title: "Старт", backgroundColor: .systemBlue)
	}

	@objc override func onButtonTouch() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(GameSettingsVC(), animated: true)
	}
}
