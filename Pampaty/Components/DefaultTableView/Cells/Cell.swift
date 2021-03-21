import UIKit
import SnapKit

class Cell: UITableViewCell {

	static let identifier = "CellIdentifier"
	var title = UILabel()
	var subtitle = UILabel()
	var textContent = UIStackView()
	var accessory = UIView()
	var accessoryDescription = UILabel()
	var leftItemView = LeftItemView()

	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

extension Cell {

	func setup(withItem item: CellViewModelProtocol) {
		title.text = item.title
		subtitle.text = item.subtitle
		accessory = item.accessory ?? UIView()
		accessoryDescription.text = item.accessoryDescription
		selectionStyle = item.selectionStyle
		leftItemView = item.leftItemView ?? LeftItemView()

		setupCellLayout()
	}
}
