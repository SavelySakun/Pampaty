import UIKit

class RootNavigationVC: UINavigationController {
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setup()
  }
  
  func setup() {
    navigationBar.prefersLargeTitles = true
  }
  
}
