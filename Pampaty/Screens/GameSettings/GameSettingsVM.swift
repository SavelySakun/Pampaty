import UIKit

class GameSettingsVM {
	var tableSections: [TableSection] = [

		TableSection(title: "Команды", items: [
			NumberOfTeamsCellVM(),
			TeamsInGameCellVM()
		]),

		TableSection(title: "Игра", items: [
			RoundTimingCellVM(),
			RoundNumbersCellVM()
		]),

		TableSection(title: "Фишки", items: [
			ModificationCellVM()
		])
	]
}
