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

	func selectedRoundDuration() -> Int {
		return gameData.settings.selectedRoundDuration
	}

	func roundDurationInSeconds() -> Int {
		let selectedIndex = gameData.settings.selectedRoundDuration
		let values = GameDataHelpers.shared.roundDurationValues
		guard selectedIndex < values.count else { return 0 }
		return values[selectedIndex]
	}

	func numberOfRounds() -> Int {
		return gameData.settings.numberOfRounds
	}

	func games(state: GameState) -> [Game] {
		return gameData.settings.games.filter { $0.state == state }
	}

	func allGames() -> [Game] {
		return gameData.settings.games
	}

	func activeGamesCount() -> Int {
		return gameData.settings.games.count
	}

	func currentRound() {}
	func teamPlayingName() {}
	func currentGameType() {}
	func currentRoundModificator() {}
	func currentTeamScore() {}
}
