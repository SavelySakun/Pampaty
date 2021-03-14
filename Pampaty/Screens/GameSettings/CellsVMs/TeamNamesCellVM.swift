import UIKit

class TeamNamesCellVM: CellViewModelProtocol {
  var title: String = "Названия команд"
  
  var subtitle: String?
  
  var accessory: UIView? = UIImageView(image: UIImage(systemName: "chevron.right")?.withRenderingMode(.alwaysTemplate))
  
  var accessoryDescription: String? = "Изменить"
  
  var selectionStyle: UITableViewCell.SelectionStyle = .none
  
  func onCellSelection() {
    print("SD - 11")
  }
  
  var delegate: CellProtocol?
  
  
}
