import UIKit

class StageResultVM: VCWithTableVM {
	override func setProperties() {
		tableHeader = TableHeader(title: "Пупсики", subtitle: "Играли")
		tableSections = [
			TableSection(
				title: "Результаты",
				items: [
					CellItemVM(title: "Яблоко", accessory: UIHelpers.getAcessory(.check)),
					CellItemVM(title: "Тыква", accessory: UIHelpers.getAcessory(.miss)),
					CellItemVM(title: "Порт", accessory: UIHelpers.getAcessory(.miss))
				]),
			TableSection(
				title: "Итого",
				items: [
					CellItemVM(title: "Всего баллов", accessory: UIHelpers.getAcessory(.chevron))
				])
		]
	}
}
