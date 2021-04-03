import UIKit

protocol CellProtocol: AnyObject {
  func onValueChanged()
}

protocol CellViewModelProtocol: AnyObject {
  var title: String? { get set }
  var subtitle: String? { get set }

	/// Right item in cell (switcher, view etc.)
  var accessory: UIView? { get set }

	/// Short text with additional information about accessory action.
	var accessoryDescription: String? { get set }

	var leftItemView: LeftItemView? { get set }
  var selectionStyle: UITableViewCell.SelectionStyle { get set }
  func onCellSelection()
	var delegate: CellProtocol? { get set }
}

extension CellViewModelProtocol {
	func onCellSelection() {}
}
