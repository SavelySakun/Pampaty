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
  
  var delegate: CellProtocol?
  
  init(title: String) {
    self.title = title
  }
  
}
