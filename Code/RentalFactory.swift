//
//  RentalFactory .swift
//  Citrus
//
//  Created by Michael Anthony on 12/1/18.
//  Copyright © 2018 Michael Anthony. All rights reserved.
//

import Foundation

// Enum collection of objects.
enum RentalType {
  
  case bike, scooter
  
}

// The rental protocol, a protocol in swift
// is used to define a "blueprint of methods, properties,
// requirements that are suited for a particuar task or functionalioty.
protocol  Rental {
  func rentalID() -> Int
  func batteryLife() -> Double
  func isAvaiable() -> Bool
  
  }



// The bike class that implements the Rental protocol.
class Bike : Rental {
  func rentalID() -> Int {
    return 567342
  }
  
  func batteryLife() -> Double {
    return 100.00
  }
  
  func isAvaiable() -> Bool {
    return true
  }

}
  
  
  class Scooter : Rental {
    func rentalID() -> Int {
      return 879648
    }
    
    func batteryLife() -> Double {
      return 100.00
    }
    
    func isAvaiable() -> Bool {
      return true
    
    }
    
    
    
    
  }
  

    

  
  
  

