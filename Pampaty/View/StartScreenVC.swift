import UIKit

class StartScreenVC: UIViewController {
  
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
    
    slider.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
    timerInfoLabel.text = String(slider.value)
    startButton.addTarget(self, action: #selector(startTimer), for: .touchUpInside)
    
    NSLayoutConstraint.activate([
      timerInfoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
      timerInfoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      
      slider.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
      slider.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
      slider.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      slider.topAnchor.constraint(equalTo: timerInfoLabel.bottomAnchor, constant: 40),
      
      startButton.topAnchor.constraint(equalTo: slider.bottomAnchor, constant: 40),
      startButton.centerXAnchor.constraint(equalTo: slider.centerXAnchor),
      startButton.widthAnchor.constraint(equalToConstant: 120),
      startButton.heightAnchor.constraint(equalToConstant: 60)
    ])
  }
  
  @objc func sliderValueChanged(sender: UISlider) {
    timerInfoLabel.text = String(sender.value)
  }

  @objc func updateInfo(sender: Timer) {
    // https://www.youtube.com/watch?v=CGnOe4bl8_A
    var currentTime = slider.value
    repeat {
      currentTime -= 1
      timerInfoLabel.text = String(currentTime)
      print("SD - currentTime: \(currentTime)")
    } while currentTime <= 0
    timer.invalidate()
  }
  
  @objc func startTimer(sender: UIButton) {
    timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateInfo), userInfo: nil, repeats: true)
  }
  
}
