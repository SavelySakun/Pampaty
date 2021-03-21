import UIKit

class CellItemVM: CellViewModelProtocol {

	var title: String?
	var subtitle: String?
	var accessory: UIView?
	var accessoryDescription: String?
	var leftItemView: LeftItemView?
	var selectionStyle: UITableViewCell.SelectionStyle = .none
	weak var delegate: CellProtocol?

	func onCellSelection() {
		return
	}

	init() {}

	init(title: String? = nil,
			 subtitle: String? = nil,
			 accessory: UIView? = nil,
			 accessoryDescription: String? = nil,
			 leftItemView: LeftItemView? = nil,
			 selectionStyle: UITableViewCell.SelectionStyle = .none) {

		self.title = title
		self.subtitle = subtitle
		self.accessory = accessory
		self.accessoryDescription = accessoryDescription
	}
}
