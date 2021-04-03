import UIKit

class BallsCellVM: CellItemVM {

	override init() {
		super.init()
		setProperties()
	}

	override func setProperties() {
		title = "У команды 0 баллов"
		subtitle = "У ближайшего соперника, команды ДОС, 5 баллов."
		accessoryDescription = "Все"
		accessory = UIUtils.chevron
	}

}
