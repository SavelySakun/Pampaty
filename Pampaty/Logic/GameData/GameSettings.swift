import Foundation

class GameSettings {
	var gameTypes = ""
	var selectedRoundDuration = 4
	var numberOfRounds = 3
	var modificators = ""

	var teams = [
		Team(withName: "Красные"),
		Team(withName: "Синие")
	 ]
}
