import UIKit

protocol VCWithTableProtocol {
	var tableHeader: TableHeader? { get set }
	var tableSections: [TableSection]? { get set }
}

protocol VCWithTableVMProtocol: AnyObject {
	func onValuesChanged()
}

class VCWithTableVM: VCWithTableProtocol {
	weak var delegate: VCWithTableVMProtocol?
	var tableHeader: TableHeader?
	var tableSections: [TableSection]?

	init(tableHeader: TableHeader? = nil, tableSections: [TableSection]? = nil) {
		self.tableHeader = tableHeader
		self.tableSections = tableSections
		setProperties()
	}

	func setProperties() {}
	func updateCellsData() {}
}
