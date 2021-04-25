import UIKit

class BigCell: Cell {

	override func setupLabelsAndAccessoryDescription() {
		super.setupLabelsAndAccessoryDescription()

		title.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
		title.textColor = .systemGray2
		subtitle.font = UIFont.systemFont(ofSize: 32, weight: .bold)
		subtitle.textColor = .black
		textContent.spacing = 5

	}

}
