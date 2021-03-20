import UIKit

class TeamNamesCellVM: CellViewModelProtocol {
  func onCellSelection() {
    AppDelegate.sceneDelegate?.navigationController.pushViewController(TeamsVC(), animated: true)
  }
  
  var title: String? = "Названия команд"
  
  var subtitle: String?
  
  var accessory: UIView? = UIImageView(image: UIImage(systemName: "chevron.right")?.withRenderingMode(.alwaysTemplate))
  
  var accessoryDescription: String? = "Изменить"
  
  var selectionStyle: UITableViewCell.SelectionStyle = .none
  
  var delegate: CellProtocol?
  
  
}
