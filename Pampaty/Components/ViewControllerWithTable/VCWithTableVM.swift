import UIKit

class VCWithTableVM {
	var tableHeader: TableHeader?
	var tableSections: [TableSection]?

	init(tableHeader: TableHeader? = nil, tableSections: [TableSection]? = nil) {
		self.tableHeader = tableHeader
		self.tableSections = tableSections
		setProperties()
	}

	func setProperties() { }
}
