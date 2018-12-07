//
//  MapViewController.swift
//  Citrus
//
//  Created by Michael Anthony on 12/1/18.
//  Copyright © 2018 Michael Anthony. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: ViewController, CLLocationManagerDelegate {

  @IBOutlet weak var map: MKMapView!
  
  var locationManager = CLLocationManager()
  
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

      self.locationManager.requestWhenInUseAuthorization()
      
      if CLLocationManager.locationServicesEnabled() {
      
      locationManager.delegate = self
      locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
      locationManager.requestLocation()
      locationManager.startUpdatingLocation() 
      
      }
      
        // Do any additional setup after loading the view.
    }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
    
  func locationManager(_manager: CLLocationManager, didUpdateLocations locations: CLLocation) {
    //let location = locations[locations.count - 1]
    
    if locations.horizontalAccuracy > 0 {
      locationManager.stopUpdatingLocation()
      
  
    }
    
    
  }
  
  private func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
    print(error)
    // .text = "Location Unavailable"
    
  }
  
  

}
