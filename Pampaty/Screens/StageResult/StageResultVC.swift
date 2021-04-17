import UIKit

class StageResultVC: ViewControllerWithTable {
	override func setProperties() {
		title = "Результаты этапа"
		button = Button(title: "Далее")
		screenVM = StageResultVM()
	}
}
