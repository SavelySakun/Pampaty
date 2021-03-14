import UIKit

class RoundNumbersCellVM: CellViewModelProtocol {
  var title: String = "Раундов"
  
  var subtitle: String?
  
  var accessory: UIView? = UIStepper()
  
  var accessoryDescription: String?
  
  var selectionStyle: UITableViewCell.SelectionStyle = .none
  
  func onCellSelection() {
    print("SD - nothing")
  }
  
  var delegate: CellProtocol?
  
  var gameTimeTotal: Double = 0
  
  init() {
    if let accessory = self.accessory as? UIStepper {
      accessory.value = 5
      gameTimeTotal = (accessory.value * 110) / 60
      self.accessoryDescription = String(format: "%.0f", accessory.value)
      subtitle = "Примерная длительность игры составит \(String(format: "%.2f", gameTimeTotal)) минут."
      accessory.minimumValue = 2
      accessory.maximumValue = 9
      accessory.addTarget(self, action: #selector(onChangeAccessoryValue), for: .touchUpInside)
    }
  }
  
  @objc func onChangeAccessoryValue(sender: UIStepper) {
    gameTimeTotal = (sender.value * 90) / 60
    accessoryDescription = String(format: "%.0f", sender.value)
    self.subtitle = "Примерная длительность игры составит \(gameTimeTotal) минут."
    self.delegate?.onValueChanged()
  }
  
  
}
