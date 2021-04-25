import UIKit
import SnapKit

class Cell: UITableViewCell {

	static let identifier = "CellIdentifier"
	var title = UILabel()
	var subtitle = UILabel()
	var textContent = UIStackView()
	var accessory = UIView()
	var accessoryDescription = UILabel()
	var leftItemView = UIView()
	var isLayoutSetupFinished: Bool = false

	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func setupLabelsAndAccessoryDescription() {
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
}

extension Cell {

	func setup(withItem item: CellViewModelProtocol) {
		title.text = item.title
		subtitle.text = item.subtitle
		accessory = item.accessory ?? UIView()
		accessoryDescription.text = item.accessoryDescription
		selectionStyle = item.selectionStyle
		leftItemView = item.leftItemView ?? UIView()
		guard !isLayoutSetupFinished else { return }
		setupCellLayout()
	}
}
