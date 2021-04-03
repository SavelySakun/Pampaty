import UIKit

class SmallPicker: UIPickerView, UIPickerViewDataSource, UIPickerViewDelegate {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupPicker()
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

	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		10
	}

	func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
		26
	}

	func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
		let pickerLabel = UILabel()
		pickerLabel.textColor = UIColor.black
		pickerLabel.text = "12"
		pickerLabel.font = UIFont.systemFont(ofSize: 18)
		pickerLabel.textAlignment = NSTextAlignment.center
		return pickerLabel
	}
}
