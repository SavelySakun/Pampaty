import UIKit
import SnapKit

class SmallCollectionViewCell: DefaultCollectionViewCell {
	let iconImageView = UIImageView(image: UIImage(systemName: "square.and.arrow.down.fill"))

	override init(frame: CGRect) {
		super.init(frame: frame)
		setLayout()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func setLayout() {
		super.setLayout()
		setContentLabel()
		setIcon()
	}

	override func setContentLabel() {
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
