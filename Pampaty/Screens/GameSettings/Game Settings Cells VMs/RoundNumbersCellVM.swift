import UIKit

class RoundNumbersCellVM: CellItemVM {

	override init() {
		super.init()
		accessory = UIStepper()
		setupAccessory()
		updateCellData()
	}

	func setupAccessory() {
		if let accessory = self.accessory as? UIStepper {
			accessory.value = Double(Logic.manager.get.numberOfRounds())
			accessory.minimumValue = 2
			accessory.maximumValue = 9
			accessory.addTarget(self, action: #selector(onChangeAccessoryValue), for: .valueChanged)
		}
	}

	override func updateCellData() {
		title = "Кол-во раундов"
		accessoryDescription = String(Logic.manager.get.numberOfRounds())
		subtitle = "Примерная длительность игры составит \(String(getTotalGameTimeInMinutes())) минут."
	}

	@objc func onChangeAccessoryValue(sender: UIStepper) {
		Logic.manager.set.numberOfRounds(value: Int(sender.value))
		updateCellData()
		self.delegate?.onValueChanged()
	}

	private func getTotalGameTimeInMinutes() -> Int {
		let numberOfRounds = Logic.manager.get.numberOfRounds()
		let roundDuration = Logic.manager.get.roundDurationInSeconds()
		let numberOfTeams = Logic.manager.get.numberOfTeams()
		let durationForRoundForAllTeams = roundDuration * numberOfTeams
		let gameTimeTotalInMinutes = (numberOfRounds * durationForRoundForAllTeams) / 60
		return gameTimeTotalInMinutes
	}
}
