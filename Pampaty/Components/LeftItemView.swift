import UIKit

class LeftItemView: UIView {

	let imageView = UIImageView()

	override init(frame: CGRect) {
		super.init(frame: frame)
	}

	init(image: UIImage) {
		super.init(frame: .zero)
		imageView.image = image
		setupImageView()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setupImageView() {
		addSubview(imageView)
		imageView.snp.makeConstraints { (make) in
			make.top.left.bottom.right.equalToSuperview()
		}
	}

}
