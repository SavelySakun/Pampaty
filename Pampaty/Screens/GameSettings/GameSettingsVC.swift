import UIKit

class GameSettingsVC: UIViewController {

	var tableView = UITableView(frame: .zero, style: .insetGrouped)
	var playButton = Button(title: "Начать игру", backgroundColor: .systemBlue)
	let screenVM = GameSettingsVM()

	override func viewDidLoad() {
		super.viewDidLoad()
		setupLayout()
	}
}

extension GameSettingsVC {
	private func setupLayout() {
		title = "Настройки"
		view.backgroundColor = .defaultGray
		setupTable()
		addPlayButton()
	}

	private func setupTable() {
		tableView.register(Cell.self, forCellReuseIdentifier: Cell.identifier)
		tableView.dataSource = self
		tableView.delegate = self
		view.addSubview(tableView)

		tableView.snp.makeConstraints { (make) in
			make.left.bottom.right.equalToSuperview()
			make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
		}
	}

	private func addPlayButton() {
		view.addSubview(playButton)
		playButton.snp.makeConstraints { (make) in
			make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
			make.centerX.equalTo(view.safeAreaLayoutGuide.snp.centerX)
		}
		playButton.addTarget(self, action: #selector(pushBeReadyScreen), for: .touchUpInside)
	}

	@objc private func pushBeReadyScreen() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(BeReadyVC(), animated: true)
	}
}

extension GameSettingsVC: CellProtocol {
	func onValueChanged() {
		DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) {
			self.tableView.reloadData()
		}
	}
}
