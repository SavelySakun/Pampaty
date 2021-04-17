import UIKit

class CollectionView: UICollectionView {

	var data: [Any] = []

	override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
		let collectionViewLayout = UICollectionViewFlowLayout()
		collectionViewLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
		collectionViewLayout.minimumInteritemSpacing = 14
		collectionViewLayout.minimumLineSpacing = 16
		collectionViewLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 20, right: 0)

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
		register(BigCollectionViewCell.self, forCellWithReuseIdentifier: "BigCell")
	}

}

extension CollectionView: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		if section == 0 { return 2 } else { return 1}
	}

	func numberOfSections(in collectionView: UICollectionView) -> Int {
		2
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		var cell = UICollectionViewCell()
		if indexPath.section < 1 {
			cell = dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
		} else {
			cell = dequeueReusableCell(withReuseIdentifier: "BigCell", for: indexPath)
		}
		return cell
	}

}

extension CollectionView: UICollectionViewDelegate {

}
