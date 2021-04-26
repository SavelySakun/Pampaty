import UIKit

class GameFinalVM: VCWithTableVM {
	override func setProperties() {
		tableSections = [
			TableSection(title: "1 место", items: [
				CellItemVM(title: "1 место", subtitle: "Пупсики",
									 leftItemView: ScoreView(text: "24", imageName: "rosette", size: .large))
			]),
			TableSection(title: "2 место", items: [
				CellItemVM(title: "Арбузики", leftItemView: ScoreView(text: "11", imageName: "rosette", size: .standart))
			])
		]
	}
}
