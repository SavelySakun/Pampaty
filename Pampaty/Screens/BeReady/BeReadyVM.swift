import UIKit

class BeReadyVM: VCWithTableVM {
	override func setProperties() {
		tableHeader = TableHeader(title: "Пупсики", subtitle: "Ход команды")

		tableSections = [
			TableSection(title: "Команды", items: [
			 GameCellVM()
		 ]),

		 TableSection(title: "Модификатор", items: [
			 CurrentModificationCellVM()
		 ]),

		 TableSection(title: "Баллы", items: [
			 BallsCellVM()
		 ])]
	}
}
