import UIKit

class GameSettingsVM: VCWithTableVM {
	let roundTimingCellVM = RoundTimingCellVM()
	let activeGamesCellVM = ActiveGamesCellVM()
	let teamsInGameCellVM = TeamsInGameCellVM()
	let roundNumbersCellVM = RoundNumbersCellVM()

	override func setProperties() {
		tableSections = [
			TableSection(title: "Игры", items: [
				activeGamesCellVM
			]),
			TableSection(title: "Команды", items: [
				teamsInGameCellVM
			]),
			TableSection(title: "Раунд", items: [
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
