import UIKit

protocol CellViewModelProtocol {
  var title: String { get set }
  var subtitle: String? { get set }
  var accessory: UIView? { get set }
  var accessoryDescription: String? { get set }
  var selectionStyle: UITableViewCell.SelectionStyle { get set }
  func onCellSelection()
}


