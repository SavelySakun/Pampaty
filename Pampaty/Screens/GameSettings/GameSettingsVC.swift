import UIKit

class GameSettingsVC: UIViewController {
  
  // MARK: - Properties
  var tableView: GenericTableView<String, DefaultCell>!
  let items = Array(repeating: "pampaty", count: 5)
  
  // MARK: - Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    setupLayout()
  }
  
  
  
  
}

// MARK: - Layout setup
extension GameSettingsVC {
  private func setupLayout() {
    
    view.backgroundColor = .defaultGray
    
    setupTable()
    
  }
  
  private func setupTable() {
    tableView = GenericTableView(frame: .zero, style: .plain, items: items, config: { (item, cell) in
      cell.textLabel?.text = item
    }, selectHandler: { (item) in
      print(item)
    })
    view.addSubview(tableView)
    
    tableView.snp.makeConstraints { (make) in
      make.left.bottom.right.equalToSuperview()
      make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
    }
  }
}

extension GameSettingsVC: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    3
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    3
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: DefaultCell().cellReuseIdentifier, for: indexPath) as? DefaultCell {
      return cell
    }
    
    return UITableViewCell()
  }
  
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let sectionHeaderView = DefaultSectionHeaderView()
    
    sectionHeaderView.title.text = "Команды".uppercased()
    return sectionHeaderView
  }
  
}
