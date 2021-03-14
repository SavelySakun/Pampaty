import UIKit

class NumberOfTeamsCellVM: CellViewModelProtocol {

  var title: String = "Количество КоличествоКоличествоКоличествоКоличество Количество"
  var subtitle: String? = "Количество Количество Количество Количество  "
  var accessory: UIView? = UISwitch()
  var selectionStyle: UITableViewCell.SelectionStyle = .none
  var accessoryDescription: String?
  
  func onCellSelection() {
    print("SD - cell selection happened")
  }
}

