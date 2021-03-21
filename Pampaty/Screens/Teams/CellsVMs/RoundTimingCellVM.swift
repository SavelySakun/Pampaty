import UIKit

class RoundTimingCellVM: CellViewModelProtocol {
	var title: String? = "Длительность раунда, секунд"

	var subtitle: String?

	var accessory: UIView? = SmallPicker()

	var accessoryDescription: String?

	var selectionStyle: UITableViewCell.SelectionStyle = .none

	func onCellSelection() {
		print("SD - nothing happened")
	}

	weak var delegate: CellProtocol?

	init() {
		setupPickerStyle()
	}

	private func setupPickerStyle() {
	}

}
