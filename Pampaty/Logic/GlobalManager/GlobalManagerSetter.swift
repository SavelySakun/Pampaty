import UIKit

class GlobalManagerSetter {

	private let gameData: GameData

	init(with gameData: GameData) {
		self.gameData = gameData
	}

	func newTeam(withName name: String) {
		let newTeam = Team(withName: name)
		gameData.settings.teams.append(newTeam)
	}

	func selectedRoundDuration(withIndex index: Int) {
		gameData.settings.selectedRoundDuration = index
	}

	func numberOfRounds(value: Int) {
		gameData.settings.numberOfRounds = value
	}

	func toggleGameState(at index: Int) {
		let currentState = gameData.settings.games[index].state
		let newState: GameState = (currentState == .active) ? .disabled : .active
		gameData.settings.games[index].state = newState
	}

	func roundDuration() {}
	func modificators() {}
}
