import UIKit

class ModificationCellVM: CellViewModelProtocol {
  var title: String = "Модификаторы"
  
  var subtitle: String? = "Случайные условия для команд, усложняющие прохождение раунда."
  
  var accessory: UIView? = UISwitch()
  
  var accessoryDescription: String?
  
  var selectionStyle: UITableViewCell.SelectionStyle = .none
  
  func onCellSelection() {
    print("SD - sell celected")
  }
  
  var delegate: CellProtocol?
  
  init() {
    if let accessory = self.accessory as? UISwitch {
      accessory.isOn = true
    }
  }
  
}
