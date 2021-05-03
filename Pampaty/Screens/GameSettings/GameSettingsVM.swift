import UIKit

class GameSettingsVM: VCWithTableVM {
	let roundTimingCellVM = RoundTimingCellVM()
	let teamsInGameCellVM = TeamsInGameCellVM()
	let roundNumbersCellVM = RoundNumbersCellVM()

	override func setProperties() {
		tableSections = [
			TableSection(title: "Команды", items: [
				teamsInGameCellVM
			]),
			TableSection(title: "Игра", items: [
				roundTimingCellVM,
				roundNumbersCellVM
			]),
			TableSection(title: "Фишки", items: [
				ModificationCellVM()
			])
		]
	}

	override func updateCellsData() {
		teamsInGameCellVM.updateCellData()
		roundNumbersCellVM.updateCellData()
	}
}
