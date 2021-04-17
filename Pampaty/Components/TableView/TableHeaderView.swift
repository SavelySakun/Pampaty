import UIKit

class TableHeaderView: UIView {

	let titleLabel = UIUtils.getCustomLabel(size: 24, weight: .bold)
	let subtitleLabel = UIUtils.getCustomLabel(size: 18, weight: .medium, color: .lightGray)

	init(title: String, subtitle: String?, frame: CGRect) {
		super.init(frame: frame)
		setContent(title: title, subtitle: subtitle)
		setStack()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setStack() {
		let stack = UIStackView(arrangedSubviews: [subtitleLabel, titleLabel])
		stack.axis = .vertical
		stack.spacing = 5

		addSubview(stack)
		stack.snp.makeConstraints { (make) in
			make.top.equalTo(snp.top).offset(20)
			make.left.equalTo(snp.left).offset(20)
			make.bottom.equalTo(snp.bottom)
		}
	}
	
	private func setContent(title: String, subtitle: String?) {
		titleLabel.text = title
		guard let subtitle = subtitle else { return }
		subtitleLabel.text = subtitle
	}

}
