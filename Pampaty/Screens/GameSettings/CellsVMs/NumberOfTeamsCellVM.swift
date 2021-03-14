import UIKit

class NumberOfTeamsCellVM: CellViewModelProtocol {

  var title: String = "Модификаторы"
  var subtitle: String? = "Случайные условия для команд, усложняющие прохождение раунда."
  var accessory: UIView? = UISwitch()
  var accessoryDescription: String? = nil
  var selectionStyle: UITableViewCell.SelectionStyle = .none
  
  func onCellSelection() {
    print("SD - cell selection happened")
  }
}

