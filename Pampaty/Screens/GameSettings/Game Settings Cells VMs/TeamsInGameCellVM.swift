import UIKit

class TeamsInGameCellVM: CellItemVM {

	override init() {
		super.init()
		
		title = "Команд в игре"
		accessory = UIUtils.chevron
		accessoryDescription = "Изменить"
	}

	override func onCellSelection() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(TeamsVC(), animated: true)
	}
}
