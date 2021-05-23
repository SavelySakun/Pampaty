import Foundation

class GameSettings {

	var selectedRoundDuration = 4
	var numberOfRounds = 3
	var modificators = ""

	var teams = [
		Team(withName: "Красные"),
		Team(withName: "Синие")
	]

	var games: [Game] = [
		Game(state: .active, type: .alias, name: "Алиас", imageName: "bulb"),
		Game(state: .disabled, type: .crocodile, name: "Крокодил", imageName: "pig"),
		Game(state: .disabled, type: .crocodile, name: "Угадай мелодию", imageName: "pig")
	]
}
