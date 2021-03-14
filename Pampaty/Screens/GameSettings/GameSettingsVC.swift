import UIKit

class GameSettingsVC: UIViewController {
  
  var tableView = UITableView(frame: .zero, style: .insetGrouped)
  let screenVM = GameSettingsVM()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupLayout()
  }
  
}

// MARK: - Layout
extension GameSettingsVC {
  private func setupLayout() {
    
    title = "Настройки игры"
    view.backgroundColor = .defaultGray
    
    setupTable()
  }
  
  private func setupTable() {
    tableView.register(DefaultCell.self, forCellReuseIdentifier: DefaultCell().cellReuseIdentifier)
    
    tableView.dataSource = self
    view.addSubview(tableView)
    
    tableView.snp.makeConstraints { (make) in
      make.left.bottom.right.equalToSuperview()
      make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
    }
  }
}

// MARK: - TableDelegate & TableDataSource
extension GameSettingsVC: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    screenVM.tableSections[section].items.count
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    screenVM.tableSections.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if var cell = tableView.dequeueReusableCell(withIdentifier: DefaultCell().cellReuseIdentifier, for: indexPath) as? DefaultCell {
      
      cell = DefaultCell(style: .subtitle, reuseIdentifier: DefaultCell().cellReuseIdentifier)
      
      cell.setupCell(item: screenVM.tableSections[indexPath.section].items[indexPath.row])
      
      return cell
    }
    return UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return screenVM.tableSections[section].title
  }
  
  
}
