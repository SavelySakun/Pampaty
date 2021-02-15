//
//  SavaTimer.swift
//  Pampaty
//
//  Created by Savely Sakun on 03.02.2021.
//

import Foundation

class EasyTimer {
  static let shared = EasyTimer()
  
  // MARK: - Timer paramaters
  var timer = Timer()
  var currentTime = 0.0
  var timerDuration = 0.0
  
  // MARK: - Timer functions
  /// Setups timer on given time interval
  func runTimer() {
    timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(implementTimer), userInfo: nil, repeats: true)
    
   
      

  }
  
  @objc func implementTimer(sender: Timer) {


    
    
  
  }
  
}
