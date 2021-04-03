import UIKit

class TableHeaderView: UIView {

	let titleLabel = UIUtils.getTitleLabel()
	let subtitleLabel = UIUtils.getSubtitleLabel()

	init(title: String, subtitle: String?, frame: CGRect) {
		super.init(frame: frame)
		setContent(title: title, subtitle: subtitle)
		setLabels()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setLabels() {
		let stack = UIStackView(arrangedSubviews: [titleLabel, subtitleLabel])
		stack.axis = .vertical
		stack.spacing = 8

		addSubview(stack)
		stack.snp.makeConstraints { (make) in
			make.top.equalTo(self.snp.top).offset(15)
			make.left.equalTo(self.snp.left).offset(30)
		}
	}

	private func setContent(title: String, subtitle: String?) {
		titleLabel.text = title
		guard let subtitle = subtitle else { return }
		subtitleLabel.text = subtitle
	}

}
