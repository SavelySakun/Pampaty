import UIKit

class ViewControllerWithTable: UIViewController {

	var tableHeaderView: TableHeaderView?
	var tableView = UITableView(frame: .zero, style: .insetGrouped)
	var screenVM: VCWithTableVM!
	var button: Button?

	// Use for configure VC props
	func setProperties() { }

	override func viewDidLoad() {
		super.viewDidLoad()
		setProperties()
		setLayout()
	}

	func setLayout() {
		view.backgroundColor = .white
		addTableView()
		addButton()
	}

	private func addTableView() {
		view.addSubview(tableView)
		tableView.delegate = self
		tableView.dataSource = self
		tableView.register(Cell.self, forCellReuseIdentifier: Cell.identifier)
		setTableConstraints()
		guard let tableHeaderContent = screenVM.tableHeader else { return }
		tableHeaderView = TableHeaderView(
			title: tableHeaderContent.title, subtitle: tableHeaderContent.subtitle,
			frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 40))
		tableView.tableHeaderView = tableHeaderView
	}

	func setTableConstraints() {
		tableView.snp.makeConstraints { (make) in
			make.top.left.bottom.right.equalToSuperview()
		}
	}

	func addButton() {
		guard let button = button else { return }
		view.addSubview(button)
		button.snp.makeConstraints { (make) in
			make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
			make.centerX.equalTo(view.safeAreaLayoutGuide.snp.centerX)
		}
		button.addTarget(self, action: #selector(onButtonTouch), for: .touchUpInside)
	}

	@objc func onButtonTouch() {
		AppDelegate.sceneDelegate?.navigationController.pushViewController(BeReadyVC(), animated: true)
	}
}
