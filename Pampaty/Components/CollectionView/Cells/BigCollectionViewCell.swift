import UIKit
import SnapKit

class BigCollectionViewCell: DefaultCollectionViewCell {
	let leftButton = Button(title: "Пропустить", backgroundColor: .systemGray3)
	let rightButton = Button(title: "Отгадано", backgroundColor: .systemGreen)

	override func setLayout() {
		super.setLayout()
		setButtons()
	}

	override func setContentLabel() {
		contentLabel.text = "Яблоко"
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
}
