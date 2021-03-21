import UIKit

class TeamsInGameCellVM: CellViewModelProtocol {
  func onCellSelection() {
    AppDelegate.sceneDelegate?.navigationController.pushViewController(TeamsVC(), animated: true)
  }

  var title: String? = "Команд в игре"

  var subtitle: String?

  var accessory: UIView? = UIImageView(image: UIImage(systemName: "chevron.right")?.withRenderingMode(.alwaysTemplate))

  var accessoryDescription: String? = "Изменить"

  var selectionStyle: UITableViewCell.SelectionStyle = .none

  weak var delegate: CellProtocol?

}
