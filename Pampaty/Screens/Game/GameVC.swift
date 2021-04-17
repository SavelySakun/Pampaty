import UIKit

class GameVC: ViewControllerWithTable {

	let collectionView = CollectionView()
	
	override func setProperties() {
		screenVM = GameVM()
	}

	override func setLayout() {
		super.setLayout()
		title = "Игра"
		view.backgroundColor = .defaultGray
		setTableConstraints()
		setCollectionViewConstraints()
	}

	override func setTableConstraints() {
		tableView.snp.makeConstraints { (make) in
			make.top.left.right.equalToSuperview()
			make.height.equalTo(view.frame.height / 2)
		}
	}

	func setCollectionViewConstraints() {
		view.addSubview(collectionView)
		collectionView.snp.makeConstraints { (make) in
			make.top.lessThanOrEqualTo(tableView.snp.bottom)
			make.left.equalToSuperview().offset(20)
			make.right.bottom.equalToSuperview().offset(-20)
		}
	}
}
