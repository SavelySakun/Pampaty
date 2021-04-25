import UIKit

class GameFinalVC: ViewControllerWithTable {
	let bigCellId = "bigCell"
	override func setProperties() {
		title = "Результаты игры"
		tableView.tableHeaderView = ImageHeaderFooter(type: .final)
		screenVM = GameFinalVM()
		tableView.register(BigCell.self, forCellReuseIdentifier: bigCellId)
	}

	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

		if let item: CellItemVM = screenVM.tableSections?[indexPath.section].items[indexPath.row] {
			if indexPath.section == 0 {
				if let cell = tableView.dequeueReusableCell(withIdentifier: bigCellId, for: indexPath) as? BigCell {
					cell.setup(withItem: item)
					return cell
				}
			} else {
				let cellId = Cell.identifier
				if let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? Cell {
					cell.setup(withItem: item)
					return cell
				}
			}
		}
		return UITableViewCell()
	}

	override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		if section == 0 {
			return nil
		}
		guard let title = screenVM.tableSections?[section].title else { return nil }
		return title
	}

}
