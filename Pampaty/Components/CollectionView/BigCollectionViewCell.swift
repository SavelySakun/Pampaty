import UIKit
import SnapKit

class BigCollectionViewCell: UICollectionViewCell {
	let containerView = UIView()
	let titleLabel = UIHelpers.getCustomLabel(size: 14, color: .systemGray)
	let contentLabel = UIHelpers.getTitleLabel()
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
		contentView.backgroundColor = .clear

		setTitleLabel()
		setContainer()
		setContentLabel()
		setButtons()
	}

	private func setTitleLabel() {
		contentView.addSubview(titleLabel)
		titleLabel.text = "ОТГАДАТЬ"
		titleLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView.snp.top)
			make.left.equalTo(contentView.snp.left).offset(19)
			make.right.equalTo(contentView.snp.right)
		}
	}

	private func setContainer() {
		containerView.backgroundColor = .white
		containerView.layer.cornerRadius = 14

		contentView.addSubview(containerView)
		containerView.snp.makeConstraints { (make) in
			make.top.equalTo(titleLabel.snp.bottom).offset(10)
			make.left.bottom.right.equalToSuperview()
		}
	}

	private func setContentLabel() {
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
