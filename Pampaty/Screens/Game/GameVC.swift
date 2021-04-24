import UIKit

class GameVC: ViewControllerWithTable {

	var collectionViewContainer: CollectionViewContainer?
	
	override func setProperties() {
		screenVM = GameVM()
		let collectionViewVM = GameCollectionViewVMs()

		collectionViewContainer = CollectionViewContainer(
			smallCollectionViewVMs: collectionViewVM.smallCollectionViewsVMs,
			bigCollectionCellVMs: collectionViewVM.bigCollectionCellVMs)

		collectionViewVM.bigCollectionCellVMs.leftButton?.addTarget(self, action: #selector(onLeftButtonTouch), for: .touchUpInside)
		collectionViewVM.bigCollectionCellVMs.rightButton?.addTarget(self, action: #selector(onRightButtonTouch), for: .touchUpInside)
	}

	override func setLayout() {
		super.setLayout()
		title = "Игра"
		view.backgroundColor = .defaultGray
		setContainer()
	}

	func setContainer() {
		guard let container = collectionViewContainer else { return }
		view.addSubview(container)
		container.snp.makeConstraints { (make) in
			make.height.equalTo(view.frame.height * 0.4)
			make.left.equalToSuperview().offset(20)
			make.right.bottom.equalToSuperview().offset(-20)
		}
	}

	@objc private func onLeftButtonTouch() {
		print("ну что же")
	}

	@objc private func onRightButtonTouch() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(StageResultVC(), animated: true)
	}
}
