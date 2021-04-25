import UIKit

class ImageHeaderFooter: UIView {

	enum ImageHeaderType {
		case final
		case beReady
	}

	let finalImages: [String] = ["final", "final2", "final3"]
	let beReadyImages: [String] = ["be_ready", "be_ready2", "be_ready3", "be_ready4", "be_ready5"]

	let imageView = UIImageView()

	init(type: ImageHeaderType) {
		super.init(frame: .zero)
		imageView.contentMode = .scaleAspectFit
		let image = getImageName(type)
		imageView.image = UIImage(named: image)
		setImageView()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setImageView() {
		addSubview(imageView)
		imageView.snp.makeConstraints { (make) in
			make.top.equalToSuperview().offset(-15)
			make.bottom.equalToSuperview().offset(30)
			make.left.right.equalToSuperview()
			make.height.equalTo(180)
		}
	}

	private func getImageName(_ type: ImageHeaderType) -> String {
		switch type {
		case .beReady:
			return beReadyImages.randomElement() ?? ""
		case .final:
			return finalImages.randomElement() ?? ""
		}
	}

}
