import UIKit

class BeReadyVC: ViewControllerWithTable {
	override func setProperties() {
		screenVM = BeReadyVM()
		button = Button(title: "Старт", backgroundColor: .systemBlue)
		title = "Приготовьтесь"
		let footerImage = ImageHeaderFooter(type: .beReady)
		footerImage.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 200)
		tableView.tableFooterView = footerImage
	}

	@objc override func onButtonTouch() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(GameVC(), animated: true)
	}
}
