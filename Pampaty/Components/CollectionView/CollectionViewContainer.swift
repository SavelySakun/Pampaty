import UIKit

class CollectionViewContainer: UIView {

	let collectionView = CollectionView()

	override init(frame: CGRect) {
		super.init(frame: frame)
		setLayout()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	private func setLayout() {
		addSubview(collectionView)
		collectionView.snp.makeConstraints { (make) in
			make.width.equalToSuperview()
			make.top.greaterThanOrEqualToSuperview()
			make.left.right.bottom.equalToSuperview()
		}
	}
}
