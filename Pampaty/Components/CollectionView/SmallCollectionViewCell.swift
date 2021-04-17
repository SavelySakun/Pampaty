import UIKit
import SnapKit

class SmallCollectionViewCell: UICollectionViewCell {
	let timeLabel = UIUtils.getTitleLabel()
	let iconImageView = UIImageView(image: UIImage(systemName: "square.and.arrow.down.fill"))

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
		timeLabel.text = "57"
		timeLabel.font = UIFont.systemFont(ofSize: 34)
		setLabel()
		setIcon()
	}

	private func setLabel() {
		contentView.addSubview(timeLabel)
		timeLabel.snp.makeConstraints { (make) in
			make.top.equalTo(contentView.snp.top).offset(8)
			make.left.equalTo(contentView.snp.left).offset(23)
			make.bottom.equalTo(contentView.snp.bottom).offset(-8)
		}
	}

	private func setIcon() {
		contentView.addSubview(iconImageView)
		iconImageView.snp.makeConstraints { (make) in
			make.left.equalTo(timeLabel.snp.right).offset(15)
			make.centerY.equalTo(timeLabel.snp.centerY)
			make.right.equalTo(contentView.snp.right).offset(-23)
		}
	}

//	override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
//		<#code#>
//	}
}
