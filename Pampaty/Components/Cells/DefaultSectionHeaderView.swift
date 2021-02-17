import UIKit

class DefaultSectionHeaderView: UIView {
  
  // MARK: - Properties
  let title: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 13, weight: .regular)
    label.textColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.262745098, alpha: 1)
    return label
  }()
  
  // MARK: - Lifecycle
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupLayout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - Helpers
  private func setupLayout() {
    addSubview(title)
    title.snp.makeConstraints { (make) in
      make.top.equalToSuperview()
      make.bottom.equalToSuperview().offset(-7)
      make.left.equalToSuperview().offset(22)
      make.right.equalToSuperview()
    }
  }
  
}
