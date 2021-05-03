import UIKit

class GlobalManagerGetter {

	private let gameData: GameData

	init(with gameData: GameData) {
		self.gameData = gameData
	}

	func listOfTeams() -> [Team] {
		return gameData.settings.teams
	}

	func numberOfTeams() -> Int {
		return gameData.settings.teams.count
	}

	func currentRound() {}
	func teamPlayingName() {}
	func currentGameType() {}
	func currentRoundModificator() {}
	func currentTeamScore() {}
}
