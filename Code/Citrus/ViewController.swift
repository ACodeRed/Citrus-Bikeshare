//
//  ViewController.swift
//  Citrus
//
//  Created by Michael Anthony on 11/18/18.
//  Copyright © 2018 Michael Anthony. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
  
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
  textField.resignFirstResponder()
  return true
  }
  
  @IBAction func backgroundTapped(_ sender: UITapGestureRecognizer) {
    view.endEditing(true) 
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
 
    
    
  }
  
  
  
}

