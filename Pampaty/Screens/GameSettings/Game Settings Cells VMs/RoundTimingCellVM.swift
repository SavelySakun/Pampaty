import UIKit

class RoundTimingCellVM: CellItemVM {

	override init() {
		super.init()

		title = "Длительность раунда, секунд"
		accessory = SmallPicker()
	}
}
