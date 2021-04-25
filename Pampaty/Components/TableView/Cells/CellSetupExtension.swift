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

	private func setupLeftItemView() {
		leftItemView.snp.makeConstraints { (make) in
			make.centerY.equalToSuperview()
			make.top.equalToSuperview().offset(8)
			make.bottom.equalToSuperview().offset(-8)
			make.left.equalTo(contentView.snp.left).offset(UIHelpers.padding)
		}
	}

	private func setupTextContent() {
		textContent.snp.makeConstraints { (make) in
			make.left.equalTo(leftItemView.snp.right).offset(UIHelpers.padding)
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
