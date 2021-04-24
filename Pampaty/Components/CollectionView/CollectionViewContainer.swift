import UIKit

class CollectionViewContainer: UIView {

	let collectionView = CollectionView()

	init(smallCollectionViewVMs: [SmallCollectionViewCellVM], bigCollectionCellVMs: BigCollectionViewCellVM) {
		super.init(frame: .zero)
		collectionView.smallCollectionViewsVMs = smallCollectionViewVMs
		collectionView.bigCollectionViewsVMs = bigCollectionCellVMs
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
