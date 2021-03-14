import UIKit

protocol NumberOfTeamsDelegate: class {
  func onStepperValueChanged()
}

class NumberOfTeamsCellVM: CellViewModelProtocol {
  var delegate: CellProtocol?
  
  var title: String = "Количество"
  var subtitle: String? = "Оптимально от 2 до 4"
  var accessory: UIView? = UIStepper()
  var accessoryDescription: String?
  var selectionStyle: UITableViewCell.SelectionStyle = .none
    
  init() {
    if let accessory = self.accessory as? UIStepper {
      accessory.value = 2
      accessoryDescription = String(format: "%.0f", accessory.value)
      accessory.minimumValue = 1
      accessory.maximumValue = 9
      accessory.addTarget(self, action: #selector(onChangeAccessoryValue), for: .touchUpInside)
      
    }
  }
  
  func onCellSelection() {
    print("SD - cell selection happened")
  }
  
  @objc func onChangeAccessoryValue(sender: UIStepper) {
    self.accessoryDescription = String(format: "%.0f", sender.value)
    self.delegate?.onValueChanged()
  }
  
}

