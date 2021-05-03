import Foundation

class GameSettings {
	var gameTypes = ""
	var roundDuration = ""
	var numberOfRounds = ""
	var modificators = ""

	var teams = [
		Team(withName: "Красные"),
		Team(withName: "Синие")
	 ]
}
