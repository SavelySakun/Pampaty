import UIKit

class GameSettingsVM: VCWithTableVM {
	override func setProperties() {
		tableSections = [
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
}
