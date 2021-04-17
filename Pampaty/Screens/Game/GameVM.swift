import UIKit

class GameVM: VCWithTableVM {
	override init(tableHeader: TableHeader? = nil, tableSections: [TableSection]? = nil) {
		super.init(
			tableHeader: TableHeader(title: "Пупсики", subtitle: "Играют"),
			tableSections: [
				TableSection(title: "Игра", items: [
					CellItemVM(
						title: "Алиас",
						subtitle: "Объясните слово, не называя его.")
				]),
				TableSection(title: "Модификатор", items: [
					CellItemVM(
						title: "Шёпот – ведущий",
						subtitle: "Ведущий объясняет все слова шёпотом.")
				])
			])
	}
}
