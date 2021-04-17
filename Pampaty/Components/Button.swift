import UIKit

class Button: UIButton {

	init(title: String, backgroundColor: UIColor? = nil) {
		super.init(frame: .zero)
		setButton(title: title, backgroundColor: backgroundColor ?? .systemBlue)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setButton(title: String, backgroundColor: UIColor) {
		setTitle(title, for: .normal)
		layer.backgroundColor = backgroundColor.cgColor
		let insetValue: CGFloat = 12.0
		layer.cornerRadius = insetValue
		contentEdgeInsets = UIEdgeInsets(top: insetValue, left: insetValue + 20, bottom: insetValue, right: insetValue + 20)
	}
}
