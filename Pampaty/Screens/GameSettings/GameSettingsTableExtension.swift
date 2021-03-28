import UIKit

extension GameSettingsVC: UITableViewDataSource, UITableViewDelegate {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		screenVM.tableSections[section].items.count
	}

	func numberOfSections(in tableView: UITableView) -> Int {
		screenVM.tableSections.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		var item: CellViewModelProtocol = screenVM.tableSections[indexPath.section].items[indexPath.row]
		let cellId = Cell.identifier
		setupDelegates(for: &item)

		if let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? Cell {
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
