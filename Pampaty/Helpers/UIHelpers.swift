import UIKit

class UIHelpers {

	public static let padding = 12

	/// Возвращает кастомный лейбл с указанными параметрами.
	/// - Parameters:
	///   - size: размер шрифта
	///   - weight: вес шрифта
	///   - color: цвет
	/// - Returns: Настроенный лэйбл
	public static func getCustomLabel(size: CGFloat? = nil, weight: UIFont.Weight? = nil, color: UIColor? = nil) -> UILabel {

		let label = UILabel()
		label.font = UIFont.systemFont(ofSize: size ?? 14, weight: weight ?? .regular)
		label.textColor = color ?? .black

		return label
	}

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
}

extension UIHelpers {
	enum AccessoryType {
		case chevron
		case check
		case miss
	}

	/// Возвращает UIView для аксессуара ячейки.
	public static func getAcessory(_ type: AccessoryType) -> UIView {

		switch type {
		case .chevron:
			return UIImageView(image: UIImage(systemName: "chevron.right")?.withRenderingMode(.alwaysTemplate))
		case .check:
			return UIImageView(image: UIImage(systemName: "checkmark")?.withRenderingMode(.alwaysTemplate))
		case .miss:
			let imageView = UIImageView(image: UIImage(systemName: "multiply")?.withRenderingMode(.alwaysTemplate))
			imageView.tintColor = .gray
			return imageView
		}
	}
}
