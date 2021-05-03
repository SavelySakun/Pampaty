import UIKit

class TeamsVC: ViewControllerWithTable {

	let alert = UIAlertController(title: "Добавить", message: "Введите название команды", preferredStyle: .alert)

	override func setProperties() {
		super.setProperties()
		screenVM = TeamsVM()
		title = "Команды"
		setupNavigationBar()
		setupAlert()
	}

	private func setupNavigationBar() {
		navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Добавить", style: .plain, target: self, action: #selector(showAddNewTeamAlert))
	}
}

extension TeamsVC {
	private func setupAlert() {
		let addTeamAction = getAddTeamAction()
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

	private func getAddTeamAction() -> UIAlertAction {
		return UIAlertAction(title: "Добавить", style: .default) { _ in
			guard let textFromTextField = self.alert.textFields?.first?.text else { return }
			Logic.manager.set.newTeam(withName: textFromTextField)
			DispatchQueue.main.async {
				self.screenVM.setProperties()
				self.tableView.reloadData()
			}
		}
	}
}
