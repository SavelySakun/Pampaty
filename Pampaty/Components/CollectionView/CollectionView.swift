import UIKit

class CollectionView: UICollectionView {

	var data: [Any] = []

	override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
		let collectionViewLayout = UICollectionViewFlowLayout()
		collectionViewLayout.itemSize = CGSize(width: 120, height: 57)
		collectionViewLayout.minimumInteritemSpacing = 18

		super.init(frame: .zero, collectionViewLayout: collectionViewLayout)
		setLayout()
	}

	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	func setLayout() {
		backgroundColor = .defaultGray
		dataSource = self
		delegate = self
		register(SmallCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
	}

}

extension CollectionView: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		2
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if let cell = dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? SmallCollectionViewCell {
			return cell
		}
		return UICollectionViewCell()
	}

}

extension CollectionView: UICollectionViewDelegate {

}
