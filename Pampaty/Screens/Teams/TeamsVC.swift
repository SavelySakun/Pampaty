import UIKit
import SnapKit

class TeamsVC: UIViewController {

	let tableView = UITableView(frame: .zero, style: .insetGrouped)
	let screenVM = TeamsVM()
	let alert = UIAlertController(title: "Добавить", message: "Введите название команды", preferredStyle: .alert)

	override func viewDidLoad() {
		super.viewDidLoad()

		setupLayout()
	}

	private func setupLayout() {
		title = "Команды"
		setupTableView()
		setupNavigationBar()
		setupAlert()
	}

	private func setupTableView() {
		tableView.register(DefaultCell.self, forCellReuseIdentifier: DefaultCell().cellReuseIdentifier)
		tableView.dataSource = self
		tableView.delegate = self

		view.addSubview(tableView)
		tableView.snp.makeConstraints { (make) in
			make.top.left.bottom.right.equalToSuperview()
		}
	}

	private func setupNavigationBar() {
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Добавить", style: .plain, target: self, action: #selector(showAddNewTeamAlert))
	}

	@objc private func onAddButtonTapped() {
		print("SD - button tapped")
	}
}

extension TeamsVC: UITableViewDelegate, UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		screenVM.items.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if let cell = tableView.dequeueReusableCell(withIdentifier: DefaultCell().cellReuseIdentifier, for: indexPath) as? DefaultCell {

			let item = screenVM.items[indexPath.row]
			cell.setup(withItem: item)

			return cell
		}

		return UITableViewCell()
	}
}

extension TeamsVC {
	private func setupAlert() {
		let addTeamAction = UIAlertAction(title: "Добавить", style: .default) { _ in
			guard let textFromTextField = self.alert.textFields?.first?.text else { return }
			let item = CellItemVM(title: textFromTextField,
														subtitle: nil,
														accessory: UISwitch(),
														accessoryDescription: nil)
			guard let accessory = item.accessory as? UISwitch else { return }
			accessory.isOn = true

			guard !(item.title?.isEmpty ?? true) else { return }
			self.screenVM.items.append(item)
			DispatchQueue.main.async {
				self.tableView.reloadData()
			}
		}
		let cancelAction = UIAlertAction(title: "Отмена", style: .destructive, handler: nil)
		alert.addTextField(configurationHandler: nil)
		alert.addAction(cancelAction)
		alert.addAction(addTeamAction)
	}

	@objc private func showAddNewTeamAlert() {
		DispatchQueue.main.async { [self] in
			alert.textFields?.first?.text?.removeAll()
			present(alert, animated: true)
		}
	}
}
