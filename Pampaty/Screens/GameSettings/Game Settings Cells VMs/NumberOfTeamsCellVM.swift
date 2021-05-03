import UIKit

protocol NumberOfTeamsDelegate: AnyObject {
	func onStepperValueChanged()
}

// УДАЛИТЬ класс, тк не нужна ячейка эта
class NumberOfTeamsCellVM: CellItemVM {

	override init() {
		super.init()

		title = "Количество"
		subtitle = "Оптимально от 2 до 4"
		accessory = UIStepper()

		accessorySetup()
	}

	private func accessorySetup() {
		if let accessory = accessory as? UIStepper {
			accessory.value = 2
			accessoryDescription = String(format: "%.0f", accessory.value)
			accessory.minimumValue = 1
			accessory.maximumValue = 9
			accessory.addTarget(self, action: #selector(onChangeAccessoryValue), for: .touchUpInside)
		}
	}

	@objc func onChangeAccessoryValue(sender: UIStepper) {
		self.accessoryDescription = String(format: "%.0f", sender.value)
		self.delegate?.onValueChanged()
	}
}
