//
//  RentalStationCommands.swift
//  Citrus
//
//  Created by Michael Anthony on 12/1/18.
//  Copyright © 2018 Michael Anthony. All rights reserved.
//

import Foundation


/*
*
* Protocols for the inventory control, and alerting user of avaialbe rentals.
*
*/

 // Verifying rentals are returned and being charged.
protocol CheckedInOut {
  var isEmpty: Bool {get}
  var capacity: Int {get}
  
  func sendCheckedOutMessage() -> Bool
  func sendCheckedInMessge() -> Bool
  
  func rentalCheckedOut() -> Bool
  func rentalCheckedIn() -> Bool
  
  func chargeReturnedDevice() -> Bool
  
  
}


// Protocol for the billing command.
protocol  billCustomer {
  
  var userAccount : String {get}
  
  func issueBillingStatement() -> String
  
}

// Protocol for the customer to report a problem.
protocol ReportProblem {
  
  var userAccount : String {get}
  
  func reportProblem() -> String
  
}


/*
*
* Classes for the command pattern.
* CheckedIn | CheckedOut | BillCustomer | SendReport
*
*/


class CheckedIn : CheckedInOut {
  var isEmpty = false
  
  var capacity: Int = 10
  
  func sendCheckedOutMessage() -> Bool {
    return true
  }
  
  func sendCheckedInMessge() -> Bool {
    return false
    
  }
  
  func rentalCheckedOut() -> Bool {
    return true
  }
  
  func rentalCheckedIn() -> Bool {
    return false
  }
  
  func chargeReturnedDevice() -> Bool {
    return false
  }
  

}

class CheckedOut : CheckedInOut {
  var isEmpty = true
  
  var capacity: Int = 10
  
  func sendCheckedOutMessage() -> Bool {
    return true
  }
  
  func sendCheckedInMessge() -> Bool {
    return false
  }
  
  func rentalCheckedOut() -> Bool {
    return true
  }
  
  func rentalCheckedIn() -> Bool {
    return false
  }
  
  func chargeReturnedDevice() -> Bool {
    return true
  }
  
  
  
}


class BillUserAccount : billCustomer {
  var userAccount: String = ""
  
  func issueBillingStatement() -> String {
    return userAccount
  }
  
  
  
  
}
  
  class SendReport : ReportProblem {
    var userAccount: String = ""
    
    func reportProblem() -> String {
      return "" 
    }
    
    
    
    
    
  }
  
  

