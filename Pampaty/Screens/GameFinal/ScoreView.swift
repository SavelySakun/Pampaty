import UIKit

class ScoreView: LabelImageView {

	enum ScoreViewSize {
		case standart
		case large
	}

	init(text: String, imageName: String, size: ScoreViewSize) {
		super.init(text: text, imageName: imageName)
		additionalLayoutSetup(size)
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func additionalLayoutSetup(_ size: ScoreViewSize) {
		label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
		imageView.snp.makeConstraints { (make) in
			switch size {
			case .standart:
				make.height.width.equalTo(30)
			case .large:
				make.height.width.equalTo(40)
			}
		}
	}
}
