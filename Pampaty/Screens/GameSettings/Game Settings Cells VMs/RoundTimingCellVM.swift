import UIKit

class RoundTimingCellVM: CellItemVM, SmallPickerDelegate {
	override init() {
		super.init()

		title = "Длительность раунда, секунд"
		accessory = SmallPicker()
		guard let myAccessoty = accessory as? SmallPicker else { return }
		myAccessoty.onChangeDelegate = self
	}

	func onSmallPickerValueChanged() {
		self.delegate?.onValueChanged()
	}

}
