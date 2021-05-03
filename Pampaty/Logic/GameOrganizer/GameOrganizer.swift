import UIKit

protocol GameManagerProtocol {
	//
}

enum GameType {
	case alias
}

class GameOrganizer {
	//var set = GameManagerSetter()
	var get = GameManagerGetter()
}

class GameManagerSetter {
 // мб не нужно
}

class GameManagerGetter {

}

class RoundData {
	var questions = ""
}
