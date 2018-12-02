//
//  RentalStationAlerts.swift
//  Citrus
//
//  Created by Michael Anthony on 12/2/18.
//  Copyright © 2018 Michael Anthony. All rights reserved.
//

import Foundation

protocol RentalStationAlerts {
  
  var capacity : Int {get}
  var isEmpty : Bool {get}
  var rentalsAvaiable : Int {get}
  var chargeRental : Bool {get}
  
  func getState()
  func setState()
  func Notify()
  func update() 
  
  
  
}


class RentalStation {
  
  private var observerArray = [RentalStationAlerts]()
  private var _number = Int()
  var number : Int {
    set {
      
      _number = newValue
      notify()
    }
    
    get {
      return _number
    }
    
  }
  
  func attachObserver(Observer : RentalStationAlerts) {
    observerArray.append(Observer)
  }
  
  private func notify() {
    for observer in observerArray{
      observer.update()
    }
    
  }
  
}
