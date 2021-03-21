import UIKit

protocol CellProtocol: AnyObject {
  func onValueChanged()
}

protocol CellViewModelProtocol: AnyObject {
  var title: String? { get set }
  var subtitle: String? { get set }
  var accessory: UIView? { get set }
  var accessoryDescription: String? { get set }
  var selectionStyle: UITableViewCell.SelectionStyle { get set }
  func onCellSelection()
	var delegate: CellProtocol? { get set }
}
