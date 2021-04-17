import UIKit

class GameSettingsVC: ViewControllerWithTable {
	override func setProperties() {
		screenVM = GameSettingsVM()
		button = Button(title: "Начать игру")
		title = "Настройка игры"
		navigationController?.navigationBar.prefersLargeTitles = true
	}
}
