import UIKit

enum GameType {
	case alias
	case crocodile
}

protocol GameProtocol {
	var type: GameType { get set }
	var name: String { get set }
	var imageName: String { get set }
}

class AliasGame: GameProtocol {
	var type: GameType = .alias
	var name: String = "Алиас"
	var imageName: String = "bulb"
}

class CrocodileGame: GameProtocol {
	var type: GameType = .crocodile
	var name: String = "Крокодил"
	var imageName: String = "pig"
}

