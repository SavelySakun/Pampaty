import UIKit

protocol SmallPickerDelegate: AnyObject {
	func onSmallPickerValueChanged()
}

class SmallPicker: UIPickerView, UIPickerViewDataSource, UIPickerViewDelegate {

	weak var onChangeDelegate: SmallPickerDelegate?

	override init(frame: CGRect) {
		super.init(frame: frame)
		setupPicker()
		selectRow(Logic.manager.get.selectedRoundDuration(), inComponent: 0, animated: false)
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupPicker() {
		delegate = self
		dataSource = self
		setContentCompressionResistancePriority(.fittingSizeLevel, for: .vertical)
		setContentCompressionResistancePriority(.fittingSizeLevel, for: .horizontal)
	}

	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		1
	}

	func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
		26
	}

	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return GameDataHelpers.shared.roundDurationValues.count
	}

	func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
		let pickerLabel = UILabel()
		pickerLabel.textColor = UIColor.black
		pickerLabel.text = String(GameDataHelpers.shared.roundDurationValues[row])
		pickerLabel.font = UIFont.systemFont(ofSize: 18)
		pickerLabel.textAlignment = NSTextAlignment.center
		return pickerLabel
	}

	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		Logic.manager.set.selectedRoundDuration(withIndex: row)
		onChangeDelegate?.onSmallPickerValueChanged()
	}
	
}
