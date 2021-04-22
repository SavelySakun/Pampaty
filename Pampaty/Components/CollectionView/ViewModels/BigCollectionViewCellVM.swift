import UIKit

class BigCollectionViewCellVM: DefaultCollectionViewCellVMProtocol {
	var title: String
	var contentText: String
	var leftButton: Button?
	var rightButton: Button?

	init(title: String, contentText: String, leftButton: Button? = nil, rightButton: Button? = nil) {
		self.title = title
		self.contentText = contentText
		self.leftButton = leftButton
		self.rightButton = rightButton
	}
}
