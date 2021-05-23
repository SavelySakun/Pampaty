import UIKit

class TeamsInGameCellVM: CellItemVM {

	override init() {
		super.init()
		updateCellData()
		accessory = UIHelpers.getAcessory(.chevron)
	}

	override func onCellSelection() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(TeamsVC(), animated: true)
	}

	override func updateCellData() {
		title = "Количество команд: \(Logic.manager.get.numberOfTeams())"
		accessoryDescription = "Изменить"
	}
}
