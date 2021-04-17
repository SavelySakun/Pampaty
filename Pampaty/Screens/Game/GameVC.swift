import UIKit

class GameVC: ViewControllerWithTable {

	let footer = CollectionViewContainer()
	
	override func setProperties() {
		screenVM = GameVM()
	}

	override func setLayout() {
		super.setLayout()
		title = "Игра"
		view.backgroundColor = .defaultGray
		setContainer()
	}

	func setContainer() {
		view.addSubview(footer)
		footer.snp.makeConstraints { (make) in
			make.height.equalTo(view.frame.height * 0.3)
			make.left.equalToSuperview().offset(20)
			make.right.bottom.equalToSuperview().offset(-20)
		}
	}
}
