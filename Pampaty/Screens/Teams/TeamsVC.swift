import UIKit
import SnapKit

class TeamsVC: UIViewController {
  
  let tableView = UITableView(frame: .zero, style: .insetGrouped)
  let screenVM = TeamsVM()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupLayout()
  }
  
  private func setupLayout() {
    title = "Названия команд"
    setupTableView()
    setupNavigationBar()
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
    navigationItem.rightBarButtonItem = UIBarButtonItem(systemItem: .add)
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

