import UIKit

class StageResultVC: ViewControllerWithTable {
	override func setProperties() {
		title = "Результаты этапа"
		button = Button(title: "Далее")
		screenVM = StageResultVM()
	}

	override func onButtonTouch() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(GameFinalVC(), animated: true)
	}
}
