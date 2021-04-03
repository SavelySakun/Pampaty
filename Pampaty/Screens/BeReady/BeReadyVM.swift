import UIKit

class BeReadyVM: VCWithTableVM {

	override init(tableHeader: TableHeader? = nil, tableSections: [TableSection]? = nil) {
		super.init()
		setProperties()
	}

	override func setProperties() {
		tableHeader = TableHeader(title: "Ход команды", subtitle: "Пупсики")

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
