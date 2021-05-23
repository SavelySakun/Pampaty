import UIKit

class ActiveGamesCellVM: CellItemVM {
	override init() {
		super.init()
		accessory = UIHelpers.getAcessory(.chevron)
		updateCellData()
	}

	override func updateCellData() {
		accessoryDescription = "Выбрать"
		let activeGamesCount = Logic.manager.get.games(state: .active).count
		title = "Активные игры: \(activeGamesCount)"
		subtitle = getActiveGamesString()
	}

	private func getActiveGamesString() -> String {
		var activeGamesString = "Играем в"
		let totalGames = Logic.manager.get.activeGamesCount()
		let activeGames = Logic.manager.get.games(state: .active)

		// Переписать
		guard !activeGames.isEmpty else { return "Не выбрано ни одной игры"}
		for (index, game) in activeGames.enumerated() {
			if (index + 1) != totalGames {
				activeGamesString.append(" \(game.name),")
			} else {
				activeGamesString.append(" \(game.name)")
			}
		}
		return activeGamesString
	}

	override func onCellSelection() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(ActiveGamesVC(), animated: true)
	}
}
