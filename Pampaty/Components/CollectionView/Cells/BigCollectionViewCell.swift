import UIKit
import SnapKit

class BigCollectionViewCell: DefaultCollectionViewCell {
	var leftButton = Button()
	var rightButton = Button()

	override func setLayout() {
		super.setLayout()
	}

	override func setContentLabel() {
		contentLabel.font = UIFont.systemFont(ofSize: 34)
		contentLabel.textAlignment = .center

		containerView.addSubview(contentLabel)
		contentLabel.snp.makeConstraints { (make) in
			make.top.equalTo(containerView.snp.top).offset(26)
			make.left.equalTo(containerView.snp.left).offset(18)
			make.right.equalTo(containerView.snp.right).offset(-18)
		}
	}

	private func setButtons() {
		let buttonsStack = UIStackView(arrangedSubviews: [leftButton, rightButton])
		buttonsStack.axis = .horizontal
		buttonsStack.spacing = 20
		buttonsStack.distribution = .fillEqually

		containerView.addSubview(buttonsStack)
		buttonsStack.snp.makeConstraints { (make) in
			make.top.equalTo(contentLabel.snp.bottom).offset(28)
			make.left.equalTo(containerView.snp.left).offset(20)
			make.right.equalTo(containerView.snp.right).offset(-20)
			make.bottom.equalTo(containerView.snp.bottom).offset(-30)
		}
	}

	func setContent(titleText: String, contentText: String, leftButton: Button, rightButton: Button) {
		super.setContent(titleText: titleText, contentText: contentText)
		self.leftButton = leftButton
		self.rightButton = rightButton
		setButtons()
	}
}
