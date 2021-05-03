import Foundation

protocol GameProtocol {
	var state: GameState { get set }
	var type: GameType { get set }
	var name: String { get set }
	var imageName: String { get set }
}
