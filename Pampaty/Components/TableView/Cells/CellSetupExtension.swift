import UIKit

extension Cell {

	func setupCellLayout() {
		setupLabelsAndAccessoryDescription()
		setupConstraints()
	}

	private func setupConstraints() {
		addSubviews()
		setupLeftItemView()
		setupTextContent()
		setupAccessoryDescription()
		setupAccessory()
		isLayoutSetupFinished = true
	}

	private func addSubviews() {
		let subviews = [textContent, accessory, accessoryDescription, leftItemView]
		subviews.forEach { view in
			contentView.addSubview(view)
		}
	}

	private func setupLabelsAndAccessoryDescription() {
		title.font = UIFont.systemFont(ofSize: 18, weight: .regular)
		subtitle.font = UIFont.systemFont(ofSize: 14, weight: .regular)
		subtitle.numberOfLines = 3
		subtitle.textColor = .systemGray
		accessoryDescription.font = UIFont.systemFont(ofSize: 18, weight: .regular)
		accessoryDescription.textAlignment = .right
		accessoryDescription.textColor = .systemGray

		textContent = UIStackView(arrangedSubviews: [title, subtitle])
		textContent.axis = .vertical
		textContent.distribution = .equalSpacing
		textContent.isUserInteractionEnabled = true
		guard let textCheckInSubtitle = subtitle.text?.isEmpty, !textCheckInSubtitle else { return }
		textContent.spacing = 8
	}

	private func setupLeftItemView() {
		leftItemView.snp.makeConstraints { (make) in
			make.width.height.equalTo(45)
			make.centerY.equalToSuperview()
			make.left.equalTo(contentView.snp.left).offset(UIHelpers.padding)
		}
	}

	private func setupTextContent() {
		textContent.snp.makeConstraints { (make) in
			if leftItemView.imageView.image == nil {
				make.left.equalTo(contentView.snp.left).offset(UIHelpers.padding)
			} else {
				make.left.equalTo(leftItemView.snp.right).offset(UIHelpers.padding)
			}
			make.top.equalTo(contentView.snp.top).offset(UIHelpers.padding)
			make.bottom.equalTo(contentView.snp.bottom).offset(-UIHelpers.padding)
		}
	}

	private func setupAccessoryDescription() {
		accessoryDescription.snp.makeConstraints { (make) in
			make.left.greaterThanOrEqualTo(textContent.snp.right).offset(UIHelpers.padding)
			make.centerY.equalTo(textContent.snp.centerY)
		}
	}

	private func setupAccessory() {
		let isAccessoryAvailable = accessory.frame.width > 0
		accessory.snp.makeConstraints { (make) in
			make.left.equalTo(accessoryDescription.snp.right).offset(
				isAccessoryAvailable ? UIHelpers.padding : 0)
			make.centerY.equalTo(contentView.snp.centerY)
			make.right.equalTo(contentView.snp.right).offset(-UIHelpers.padding)

		}
	}
}
