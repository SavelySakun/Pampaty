import Foundation

class GameVC: ViewControllerWithTable {
	override func setProperties() {
		screenVM = GameVM()
	}
	override func setLayout() {
		super.setLayout()
		title = "Игра"
	}
}
