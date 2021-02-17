//
//  TimerModels.swift
//  Pampaty
//
//  Created by Savely Sakun on 14.02.2021.
//

import Foundation

extension EasyTimer {
  
  struct Action {
    func doNothing() {}
    func printText() {}
    func playSound() {}
    func returnString() {}
    // добавить возможность добавления собственного действия
  }

  struct Settings {
    var timeInterval: Double = 0.0
    var timerDuration: Double = 0.0
    var onTimerCompletion: ()
    
  }
  
}


