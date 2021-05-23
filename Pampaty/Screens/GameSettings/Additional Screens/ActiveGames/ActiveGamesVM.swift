import UIKit

class ActiveGamesVM: VCWithTableVM {

	var gameCells = [CellItemVM]()

	override func setProperties() {
		gameCells = getGamesItemsCells()
		tableSections = [TableSection]()
		tableSections?.append(TableSection(title: "", items: gameCells))
	}

	private func getGamesItemsCells() -> [CellItemVM] {
		var items = [CellItemVM]()
		let games = Logic.manager.get.allGames()

		for (index, game) in games.enumerated() {
			let switchView = getConfiguredSwitch(game, index)
			let newItem = CellItemVM(title: game.name, accessory: switchView)
			items.append(newItem)
		}

		return items
	}

	private func getConfiguredSwitch(_ game: Game, _ index: Int) -> UISwitch {
		let switchView = UISwitch()
		switchView.tag = index
		switchView.isOn = game.state == .active ? true : false
		switchView.addTarget(self, action: #selector(changeGameState), for: .valueChanged)
		return switchView
	}

	@objc private func changeGameState(sender: UISwitch) {
		Logic.manager.set.toggleGameState(at: sender.tag)
		delegate?.onValuesChanged()
	}

}
