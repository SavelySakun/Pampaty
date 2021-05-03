import Foundation

class GameSettings {
	var gameTypes = ""
	var selectedRoundDuration = 4
	var numberOfRounds = ""
	var modificators = ""

	var teams = [
		Team(withName: "Красные"),
		Team(withName: "Синие")
	 ]
}
