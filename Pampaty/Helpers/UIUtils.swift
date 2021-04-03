import UIKit

class UIUtils {

	public static let padding = 12

	public static func getTitleLabel() -> UILabel {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 18, weight: .regular)
		return label
	}

	public static func getSubtitleLabel() -> UILabel {
		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
		label.textColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.262745098, alpha: 1)
		return label
	}

	public static let chevron = UIImageView(image: UIImage(systemName: "chevron.right")?.withRenderingMode(.alwaysTemplate))

}
