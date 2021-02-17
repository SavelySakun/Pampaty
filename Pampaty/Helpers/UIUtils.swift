import UIKit

class UIUtils {
  
  /// Return UILabel with regular font of size 22.
  public static func getDefaultTitleLabel() -> UILabel {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 22, weight: .regular)
    return label
  }
  
  /// Return UILabel with regular font of size 22.
  public static func getDefaultSubtitleLabel() -> UILabel {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
    label.textColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.262745098, alpha: 1)
    return label
  }
  
}
