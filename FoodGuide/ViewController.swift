//
//  ViewController.swift
//  FoodGuide
//
//  Created by Paul Ku on 2016/7/29.
//  Copyright © 2016年 Paul Ku. All rights reserved.
//

import UIKit
import GoogleMaps
import CoreLocation

class ViewController: UIViewController{
    
    let currentPosManager = CLLocationManager()
    var currentOrdinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        self.currentPosManager.requestAlwaysAuthorization()
        self.currentPosManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            currentPosManager.delegate = self
            currentPosManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            currentPosManager.startUpdatingLocation()
        }
        
        
        
        let mapView = GMSMapView(frame: self.view.bounds)
        mapView.myLocationEnabled = true
        self.view = mapView
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Location Delegate Methods
    /*
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let position = locations.last
        let corordinate = (position?.coordinate)!
        print("\(corordinate.latitude) , \(corordinate.longitude)")
        if( corordinate.latitude == self.currentOrdinate.latitude || corordinate.longitude == self.currentOrdinate.longitude ){
            
        } else {
            self.currentOrdinate = corordinate
            let mapView = GMSMapView(frame: self.view.bounds)
            let sydney = GMSCameraPosition.cameraWithLatitude(-33.8683,
                                                              longitude: 151.2086, zoom: 6)
            mapView.animateToCameraPosition( sydney )
            self.view = mapView
        }
    }
    */
    
}