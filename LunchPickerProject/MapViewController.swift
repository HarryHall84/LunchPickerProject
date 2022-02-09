//
//  MapViewController.swift
//  LunchPickerProject
//
//  Created by Harrison Hall on 2/9/22.
//

import Foundation
import UIKit
import CoreLocation
import MapKit
class MapViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapOutlet: MKMapView!
    let locationManager = CLLocationManager()
    var places : [MKMapItem] = []
    var currentLocation : CLLocation!
    var annotation = MKPointAnnotation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
        locationManager.requestWhenInUseAuthorization()
        
        let theSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let thisCenter = CLLocationCoordinate2D(latitude: 42.2371, longitude: -88.3226)
        
        let theRegion = MKCoordinateRegion(center: thisCenter, span: theSpan)
        mapOutlet.setRegion(theRegion, animated: true)
    }
    
    
    
    
}
