import UIKit

class GenericTableView<Item, Cell: UITableViewCell>: UITableView, UITableViewDelegate, UITableViewDataSource {

  let cellReuseIdentifier = "CellReuseIdentifier"
  var items: [Item]
  var config: (Item, Cell) -> ()
  var selectHandler: (Item) -> ()
  
  init(frame: CGRect, style: Style, items: [Item], config: @escaping (Item, Cell) -> (), selectHandler: @escaping (Item) -> ()) {
    self.items = items
    self.config = config
    self.selectHandler = selectHandler
    super.init(frame: frame, style: style)
    
    self.delegate = self
    self.dataSource = self
    self.register(Cell.self, forCellReuseIdentifier: cellReuseIdentifier)
    self.translatesAutoresizingMaskIntoConstraints = false
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = self.dequeueReusableCell(withIdentifier: cellReuseIdentifier, for: indexPath) as? Cell {
      config(items[indexPath.row], cell)
      return cell
    } else {
      return UITableViewCell()
    }
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    selectHandler(items[indexPath.row])
  }

}

extension GenericTableView {
  func reload(data items: [Item]) {
    self.items = items
    self.reloadData()
  }
}
