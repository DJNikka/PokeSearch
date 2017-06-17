//
//  ViewController.swift
//  PokeSearch
//
//  Created by Konstantine Piterman on 6/16/17.
//  Copyright © 2017 Konstantine Piterman. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    var geoFire: GeoFire!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapView.delegate = self
        mapView.userTrackingMode = MKUserTrackingMode.follow
    }
    
    override func viewDidAppear(_ animated: Bool) {
        locationAuthStatus()
    }
    
    func locationAuthStatus() {
    if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
    mapView.showsUserLocation = true
    } else {
        locationManager.requestWhenInUseAuthorization()
        }
}
    

        
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func spotRandomPokemon(_ sender: Any) {
    }

}

