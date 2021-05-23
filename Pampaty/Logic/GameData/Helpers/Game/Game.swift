import UIKit

class Game: GameProtocol {

	var state: GameState
	var type: GameType
	var name: String
	var imageName: String

	init(state: GameState, type: GameType, name: String, imageName: String) {
		self.state = state
		self.type = type
		self.name = name
		self.imageName = imageName
	}
}
