import UIKit
import SnapKit

class StartScreenVC: UIViewController {
  
  var numberOfsec = 0
  var timer = Timer()
  let timerInfoLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont.systemFont(ofSize: 32, weight: .regular)
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "_"
    return label
  }()
  
  let slider: UISlider = {
    let slider = UISlider()
    slider.translatesAutoresizingMaskIntoConstraints = false
    slider.maximumValue = 100
    slider.minimumValue = 0
    slider.value = 50
    slider.tintColor = .gray
    slider.thumbTintColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
    slider.isContinuous = true
    return slider
  }()
  
  let startButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Start", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    button.layer.cornerRadius = 8
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setupLayout()
  }
  
  private func setupLayout() {
    view.backgroundColor = .white
    view.addSubview(timerInfoLabel)
    view.addSubview(slider)
    view.addSubview(startButton)
    
    timerInfoLabel.text = String(slider.value)
    slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
    startButton.addTarget(self, action: #selector(startTimer), for: .touchUpInside)
    
    timerInfoLabel.snp.makeConstraints { (make) in
      make.center.equalToSuperview()
    }
    slider.snp.makeConstraints { (make) in
      make.left.equalTo(view.snp.left).offset(30)
      make.right.equalTo(view.snp.right).offset(-30)
      make.centerX.equalToSuperview()
      make.top.equalTo(timerInfoLabel.snp.bottom).offset(40)
    }
    startButton.snp.makeConstraints { (make) in
      make.top.equalTo(slider.snp.bottom).offset(40)
      make.centerX.equalTo(slider.snp.centerX)
      make.width.equalTo(120)
      make.height.equalTo(60)
    }
  }
  
  @objc func sliderValueChanged(sender: UISlider) {
    timerInfoLabel.text = String(sender.value)
  }
  
  @objc func startTimer() {
    
    EasyTimer.shared.runTimer()
  }

  
}