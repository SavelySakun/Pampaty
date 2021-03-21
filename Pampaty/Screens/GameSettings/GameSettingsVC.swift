import UIKit

class GameSettingsVC: UIViewController {

	var tableView = UITableView(frame: .zero, style: .insetGrouped)
	let screenVM = GameSettingsVM()

	override func viewDidLoad() {
		super.viewDidLoad()
		setupLayout()
	}
}

extension GameSettingsVC {
	private func setupLayout() {

		title = "Настройки игры"
		view.backgroundColor = .defaultGray

		setupTable()
	}

	private func setupTable() {
		tableView.register(DefaultCell.self, forCellReuseIdentifier: DefaultCell().cellReuseIdentifier)
		tableView.dataSource = self
		tableView.delegate = self
		view.addSubview(tableView)

		tableView.snp.makeConstraints { (make) in
			make.left.bottom.right.equalToSuperview()
			make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
		}
	}
}

extension GameSettingsVC: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		screenVM.tableSections[section].items.count
	}

	func numberOfSections(in tableView: UITableView) -> Int {
		screenVM.tableSections.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		var item = screenVM.tableSections[indexPath.section].items[indexPath.row]
		let cellId = DefaultCell().cellReuseIdentifier
		setupDelegates(for: &item)

		if let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? DefaultCell {
			cell.setup(withItem: item)
			return cell
		}
		return UITableViewCell()
	}

	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		return screenVM.tableSections[section].title
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		screenVM.tableSections[indexPath.section].items[indexPath.row].onCellSelection()

	}

	private func setupDelegates(for item: inout CellViewModelProtocol) {
		item.delegate = self
	}
}

extension GameSettingsVC: CellProtocol {
	func onValueChanged() {

		DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) {
			self.tableView.reloadData()
		}

	}
}
