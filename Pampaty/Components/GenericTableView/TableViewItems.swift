import UIKit

enum CellType {
  case empty
  case disclosureIndicator
  case detailDisclosureButton
  case checkmark
  case detailButton
  case picker
  case switcher
  case stepper
  case custom
}

struct TableSection {
  var title: String
  var items: [CellItem]
}

struct CellItem {
  var title: String
  var subtitle: String?
  var vm: DefaultCellVMProtocol?
}


