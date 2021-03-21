import UIKit

class ModificationCellVM: CellItemVM {

	override init() {
		super.init()
		
		title = "Модификаторы"
		subtitle = "Случайные условия для команд, усложняющие прохождение раунда."
		accessory = UISwitch()

		if let accessory = self.accessory as? UISwitch {
			accessory.isOn = true
		}
	}
}
