import UIKit

class GlobalManagerSetter {

	private let gameData: GameData

	init(with gameData: GameData) {
		self.gameData = gameData
	}
	
	func numberOfRounds() {}
	func roundDuration() {}
	func modificators() {}

	func newTeam(withName name: String) {
		let newTeam = Team(withName: name)
		gameData.settings.teams.append(newTeam)
	}
}
