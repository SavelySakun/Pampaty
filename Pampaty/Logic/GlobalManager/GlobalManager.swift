import UIKit

class GlobalManager {
	private var gameData = GameData()
	var set: GlobalManagerSetter
	var get: GlobalManagerGetter

	init() {
		self.set = GlobalManagerSetter(with: gameData)
		self.get = GlobalManagerGetter(with: gameData)
	}
}
