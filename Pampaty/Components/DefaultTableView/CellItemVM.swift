import UIKit

class CellItemVM: CellViewModelProtocol {
	func onCellSelection() {
		return
	}

	var title: String?
	var subtitle: String?

	var accessory: UIView?
	var accessoryDescription: String?
	var selectionStyle: UITableViewCell.SelectionStyle = .none
	weak var delegate: CellProtocol?
	init(title: String) {
		self.title = title
	}

	init(title: String, subtitle: String?, accessory: UIView?, accessoryDescription: String?) {
		self.title = title
		self.subtitle = subtitle
		self.accessory = accessory
		self.accessoryDescription = accessoryDescription
	}
}
