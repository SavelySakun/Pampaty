import UIKit

class Logic {
	static var manager = GlobalManager()

	// При необходимости можно установить новый менеджер, чтобы сбросить всю информацию с предыдущего.
	static func setNewSharedManager() {
		Logic.manager = GlobalManager()
	}
}
