import UIKit

class ActiveGamesVC: ViewControllerWithTable, VCWithTableVMProtocol {

	override func setProperties() {
		screenVM = ActiveGamesVM()
		title = "Игры"
		screenVM.delegate = self
	}

	func onValuesChanged() {
		DispatchQueue.main.async { [self] in
			screenVM.updateCellsData()
			tableView.reloadData()
		}
	}
}
