import UIKit

protocol DefaultCellVMProtocol {
  var accessory: Any? { get set }
  var detailTextLabel: String? { get set }
  func getAccessory() -> Any?
}


