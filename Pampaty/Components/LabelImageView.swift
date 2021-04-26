import UIKit

class LabelImageView: UIView {

	let imageView = UIImageView()
	let label = UILabel()

	init(text: String, imageName: String) {
		super.init(frame: .zero)

		label.text = text
		let image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysTemplate)
		imageView.image = image
		imageView.contentMode = .scaleAspectFit

		setStackView()
	}
	
	private func setStackView() {
		let stackView = UIStackView(arrangedSubviews: [label, imageView])
		stackView.spacing = 4
		stackView.axis = .horizontal
		stackView.distribution = .fill
		stackView.alignment = .center

		addSubview(stackView)
		stackView.snp.makeConstraints { (make) in
			make.top.left.right.bottom.equalToSuperview()
		}
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
