import UIKit
import SnapKit

class SmallCollectionViewCell: UICollectionViewCell {
	let containerView = UIView()
	let titleLabel = UIHelpers.getCustomLabel(size: 14, color: .systemGray)
	let contentLabel = UIHelpers.getTitleLabel()
	let iconImageView = UIImageView(image: UIImage(systemName: "square.and.arrow.down.fill"))

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
		setIcon()
	}

	private func setTitleLabel() {
		contentView.addSubview(titleLabel)
		titleLabel.text = "ОСТАЛОСЬ"
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
		contentLabel.text = "57"
		contentLabel.font = UIFont.systemFont(ofSize: 34)
		containerView.addSubview(contentLabel)
		contentLabel.snp.makeConstraints { (make) in
			make.top.equalTo(containerView.snp.top).offset(10)
			make.left.equalTo(containerView.snp.left).offset(23)
			make.bottom.equalTo(containerView.snp.bottom).offset(-10)
		}
	}

	private func setIcon() {
		containerView.addSubview(iconImageView)
		iconImageView.snp.makeConstraints { (make) in
			make.left.equalTo(contentLabel.snp.right).offset(15)
			make.centerY.equalTo(contentLabel.snp.centerY)
			make.right.equalTo(containerView.snp.right).offset(-23)
		}
	}
}
