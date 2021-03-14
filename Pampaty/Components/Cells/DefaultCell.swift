// https://stackoverflow.com/questions/37645408/uitableviewcell-rounded-corners-and-shadow

import UIKit
import SnapKit

class DefaultCell: UITableViewCell {
  
  let cellReuseIdentifier = "DefaultCell"
  private var title = UILabel()
  private var subtitle = UILabel()
  private var textContent = UIStackView()
  private var accessory = UIView()
  private var accessoryDescription = UILabel()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}

extension DefaultCell {
  private func setupCellLayout() {
    setupLabelsAndAccessory()
    setupConstraints()
  }
  
  private func setupLabelsAndAccessory() {
    title.font = UIFont.systemFont(ofSize: 18, weight: .regular)
    subtitle.font = UIFont.systemFont(ofSize: 14, weight: .regular)
    subtitle.numberOfLines = 3
    subtitle.textColor = .systemGray
    accessoryDescription.font = UIFont.systemFont(ofSize: 14, weight: .regular)
    accessoryDescription.textAlignment = .right
    accessoryDescription.textColor = .systemGray
    
    textContent = UIStackView(arrangedSubviews: [title, subtitle])
    textContent.axis = .vertical
    textContent.spacing = 8
    textContent.distribution = .equalSpacing
    textContent.isUserInteractionEnabled = true
  }
  
  private func setupConstraints() {
    let isAccessoryAvailable = accessory.frame.width > 0
    let accessoryDescriptionWidth = accessoryDescription.systemLayoutSizeFitting(.zero)
    let accessoryWidth = accessory.systemLayoutSizeFitting(.zero)
    
    contentView.addSubview(textContent)
    contentView.addSubview(accessory)
    contentView.addSubview(accessoryDescription)
    
    textContent.snp.makeConstraints { (make) in
      make.left.equalTo(contentView.snp.left).offset(12)
      make.top.equalTo(contentView.snp.top).offset(12)
      make.bottom.equalTo(contentView.snp.bottom).offset(-12)
    }
    
    accessoryDescription.snp.makeConstraints { (make) in
      make.left.equalTo(textContent.snp.right).offset(12)
      make.centerY.equalTo(textContent.snp.centerY)
      make.width.equalTo(accessoryDescriptionWidth)
    }
    
    accessory.snp.makeConstraints { (make) in
      make.left.equalTo(accessoryDescription.snp.right).offset(
        isAccessoryAvailable ? 12 : 0)
      make.centerY.equalTo(contentView.snp.centerY)
      make.right.equalTo(contentView.snp.right).offset(
        isAccessoryAvailable ? -14 : 0)
      make.width.equalTo(accessoryWidth)
    }
  }
  
}

extension DefaultCell {

  func setup(withItem item: CellViewModelProtocol) {
    title.text = item.title
    subtitle.text = item.subtitle
    accessory = item.accessory ?? UIView()
    accessoryDescription.text = item.accessoryDescription
    selectionStyle = item.selectionStyle
    
    setupCellLayout()
  }
  
}
