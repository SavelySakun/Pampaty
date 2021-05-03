import UIKit

// Использовать его как синглтон? По идее лучше для каждого менеджера делать свой репозиторий, чтобы потом каши не было
class GameData {
	var settings: GameSettings?
	var currentGameInfo: CurrentGameInfo?
}
