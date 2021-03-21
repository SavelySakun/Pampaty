import UIKit

class TeamsInGameCellVM: CellItemVM {

	override init() {
		super.init()
		title = "Команд в игре"
		accessory = UIImageView(image: UIImage(systemName: "chevron.right")?.withRenderingMode(.alwaysTemplate))
		accessoryDescription = "Изменить"
	}

	override func onCellSelection() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(TeamsVC(), animated: true)
	}
}
