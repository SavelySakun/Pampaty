// https://stackoverflow.com/questions/37645408/uitableviewcell-rounded-corners-and-shadow

import UIKit
import SnapKit

/// Cell with title and subtitle.
/// Use it if you need cell without additional elements like buttons or something else.
class DefaultCell: UITableViewCell {
  
  // MARK: - Properties
  let cellReuseIdentifier = "DefaultCell"
  
  // MARK: - Lifecycle
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

// MARK: - Layout setup
extension DefaultCell {

  func setupCell(item: CellItem) {
    
    var content = defaultContentConfiguration()
    content.text = item.title
    content.secondaryText = item.subtitle
    content.secondaryTextProperties.font = UIFont.systemFont(ofSize: 14)
    content.textToSecondaryTextVerticalPadding = 8
    content.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 12)
    accessoryView = item.vm?.getAccessory() as? UIView
    contentConfiguration = content
  }
  
}
