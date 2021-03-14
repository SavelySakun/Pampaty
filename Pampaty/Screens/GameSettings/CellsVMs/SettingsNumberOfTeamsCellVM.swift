import UIKit

class SettingsNumberOfTeamsCellVM: DefaultCellVMProtocol {
  var accessory: Any? = UITableViewCell.AccessoryType.detailDisclosureButton
  
  func getAccessory() -> Any? {
    return accessory as Any
  }
  
 
  var detailTextLabel: String? = "Названия команд"
    
  init() {
    guard let detailButton = accessory as? UITableViewCell.AccessoryType else { return }
    
  }

  
  @objc func onSwitchChange() {
    print("SD - switch change")
  }
}

