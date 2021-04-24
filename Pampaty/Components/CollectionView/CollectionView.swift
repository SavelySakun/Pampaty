import UIKit

class CollectionView: UICollectionView {

	var smallCollectionViewsVMs: [SmallCollectionViewCellVM]?
	var bigCollectionViewsVMs: BigCollectionViewCellVM?

	override var contentSize: CGSize {
		didSet {
			self.invalidateIntrinsicContentSize()
		}
	}
	override var intrinsicContentSize: CGSize {
		self.layoutIfNeeded()
		return CGSize(width: UIView.noIntrinsicMetric, height: contentSize.height)
	}

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
		isScrollEnabled = false
		backgroundColor = .clear
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
		if indexPath.section < 1 {
			guard let cell = dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? SmallCollectionViewCell else { return UICollectionViewCell()}
			let item = smallCollectionViewsVMs?[indexPath.row]
			cell.setContent(titleText: item!.title, contentText: item!.contentText, imageName: item!.iconImageName)
			return cell
		} else {
			guard let cell = dequeueReusableCell(withReuseIdentifier: "BigCell", for: indexPath) as? BigCollectionViewCell else { return UICollectionViewCell() }
			let item = bigCollectionViewsVMs
			cell.setContent(titleText: item!.title, contentText: item!.contentText, leftButton: item!.leftButton!, rightButton: item!.rightButton!)
			return cell
		}
	}

	func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

		return UICollectionReusableView()
	}

}

extension CollectionView: UICollectionViewDelegate {

}
