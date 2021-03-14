//
//  DefaultPicker.swift
//  Pampaty
//
//  Created by Savely Sakun on 08.03.2021.
//

import UIKit

class DefaultPicker: UIPickerView, UIPickerViewDataSource {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = .blue
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    10
  }
  


}
