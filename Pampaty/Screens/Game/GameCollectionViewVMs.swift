import UIKit

class GameCollectionViewVMs {
	let smallCollectionViewsVMs: [SmallCollectionViewCellVM] = [
		TimeLeftCellVM(title: "Осталось", contentText: "57", iconImageName: "clock.fill"),
		TotalScoreCellVM(title: "Баллы", contentText: "7", iconImageName: "rosette")
	]

	let bigCollectionCellVMs: BigCollectionViewCellVM = QuestionCellVM(
			title: "Отгадать", contentText: "Яблоко",
			leftButton: Button(title: "Пропустить", backgroundColor: .gray),
			rightButton: Button(title: "Отгадано", backgroundColor: .systemGreen))
}

