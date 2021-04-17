import UIKit

extension ViewControllerWithTable: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		guard let itemsInSectionsCount = screenVM.tableSections?[section].items.count else { return 0 }
		return itemsInSectionsCount
	}

	func numberOfSections(in tableView: UITableView) -> Int {
		guard let sectionCount = screenVM.tableSections?.count else { return 0 }
		return sectionCount
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		if var item: CellItemVM = screenVM.tableSections?[indexPath.section].items[indexPath.row] {
			let cellId = Cell.identifier
			setupDelegates(for: &item)

			if let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? Cell {
				cell.setup(withItem: item)
				return cell
			}
		}
		return UITableViewCell()
	}

	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		guard let title = screenVM.tableSections?[section].title else { return nil }
		return title
	}
}

extension ViewControllerWithTable: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		screenVM.tableSections?[indexPath.section].items[indexPath.row].onCellSelection()
	}
}

extension ViewControllerWithTable: CellProtocol {
	private func setupDelegates(for item: inout CellItemVM) {
		item.delegate = self
	}

	func onValueChanged() {
		DispatchQueue.main.async {
			self.tableView.reloadData()
		}
	}
}
