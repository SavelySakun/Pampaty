import UIKit

class ActiveGamesCellVM: CellItemVM {
	override init() {
		super.init()
		accessory = UIHelpers.getAcessory(.chevron)
		updateCellData()
	}

	override func updateCellData() {
		accessoryDescription = "Выбрать"
		title = "Активные игры: \(Logic.manager.get.activeGamesCount())"
		subtitle = getActiveGamesString()
	}

	private func getActiveGamesString() -> String {
		var activeGamesString = "Играем в"
		let totalGames = Logic.manager.get.activeGamesCount()

		// Переписать
		for (index, game) in Logic.manager.get.activeGames().enumerated() {
			if (index + 1) != totalGames {
				activeGamesString.append(" \(game.name),")
			} else {
				activeGamesString.append(" \(game.name).")
			}
		}
		return activeGamesString
	}
}
