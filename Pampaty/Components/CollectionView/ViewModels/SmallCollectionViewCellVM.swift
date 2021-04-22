import UIKit

class SmallCollectionViewCellVM: DefaultCollectionViewCellVMProtocol {
	var title: String
	var contentText: String
	var iconImageName: String

	init(title: String, contentText: String, iconImageName: String) {
		self.title = title
		self.contentText = contentText
		self.iconImageName = iconImageName
	}
}
