// https://stackoverflow.com/questions/37645408/uitableviewcell-rounded-corners-and-shadow

import UIKit
import SnapKit

/// Cell with title and subtitle.
/// Use it if you need cell without additional elements like buttons or something else.
class DefaultCell: UITableViewCell {
  
  // MARK: - Properties
  let cellReuseIdentifier = "DefaultCell"
  let title = UIUtils.getDefaultTitleLabel()
  let subtitle = UIUtils.getDefaultSubtitleLabel()
  
  // MARK: - Lifecycle
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupLayout()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

// MARK: - Layout setup
extension DefaultCell {
  private func setupLayout() {
    setupTitle()
    setupSubtitle()
  }
  
  private func setupTitle() {
    contentView.addSubview(title)
    title.text = "Количество: 2 Количество: 2Количество: 2Количество: 2Количество: 2Количество: 2"
    title.numberOfLines = 2
    title.snp.makeConstraints { (make) in
      make.top.equalToSuperview().offset(22)
      make.left.right.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
    }
  }
  
  private func setupSubtitle() {
    contentView.addSubview(subtitle)
    subtitle.text = "С другой стороны начало повседневной работы по формированию позиции позволяет выполнять важные задания по разработке существенных финансовых и административных условий."
    subtitle.numberOfLines = 3
    subtitle.snp.makeConstraints { (make) in
      make.top.equalTo(title.snp.bottom).offset(10)
      make.bottom.equalToSuperview().offset(-22)
      make.left.right.equalToSuperview().inset(UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20))
    }
  }

}
