import UIKit
import SnapKit

class BigCollectionViewCell: UICollectionViewCell {
	let questionLabel = UIUtils.getTitleLabel()
	let leftButton = Button(title: "Пропустить", backgroundColor: .systemGray3)
	let rightButton = Button(title: "Отгадано", backgroundColor: .systemGreen)

	override init(frame: CGRect) {
		super.init(frame: frame)
		setLayout()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setLayout() {
		contentView.backgroundColor = .white
		contentView.layer.cornerRadius = 14
		questionLabel.text = "Яблоко"
		questionLabel.font = UIFont.systemFont(ofSize: 34)
		questionLabel.textAlignment = .center
		setLabel()
		setButtons()
	}

	private func setLabel() {
		contentView.addSubview(questionLabel)
		questionLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView.snp.top).offset(26)
			make.left.equalTo(contentView.snp.left).offset(18)
			make.right.equalTo(contentView.snp.right).offset(-18)
		}
	}

	private func setButtons() {
		let buttonsStack = UIStackView(arrangedSubviews: [leftButton, rightButton])
		buttonsStack.axis = .horizontal
		buttonsStack.spacing = 20
		buttonsStack.distribution = .fillEqually
		contentView.addSubview(buttonsStack)
		buttonsStack.snp.makeConstraints { (make) in
			make.top.equalTo(questionLabel.snp.bottom).offset(28)
			make.bottom.equalTo(contentView.snp.bottom).offset(-30)
			make.left.equalTo(contentView.snp.left).offset(20)
			make.right.equalTo(contentView.snp.right).offset(-20)
		}
	}
}
