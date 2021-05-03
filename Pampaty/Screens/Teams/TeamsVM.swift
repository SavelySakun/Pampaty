import UIKit

class TeamsVM: VCWithTableVM {

	override func setProperties() {
		tableSections = [
			TableSection(title: "Играют", items: getTeamsItems())
		]
	}

	private func getTeamsItems() -> [CellItemVM] {
		var items = [CellItemVM]()

		Logic.manager.get.listOfTeams().forEach { team in
			let switchView = UISwitch()
			switchView.isOn = true
			let newItem = CellItemVM(title: team.name, accessory: switchView)
			items.append(newItem)
		}

		return items
	}

}
