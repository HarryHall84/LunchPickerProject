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
    let locationManagers = CLLocationManager()
    var places : [MKMapItem] = []
    var currentLocation : CLLocation!
    var annotation = MKPointAnnotation()
    var restaurauntSelection : Resturant!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManagers.delegate = self
        locationManagers.desiredAccuracy = kCLLocationAccuracyBest
        locationManagers.startUpdatingLocation()
        
        locationManagers.requestWhenInUseAuthorization()
        mapOutlet.showsUserLocation = true
        
        let theSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let thisCenter = CLLocationCoordinate2D(latitude: 42.2371, longitude: -88.3226)
       // let center3 = currentLocation.coordinate
        let theRegion = MKCoordinateRegion(center: thisCenter, span: theSpan)
        mapOutlet.setRegion(theRegion, animated: true)
        
    }
    
    
    func locationManager1(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations[0]
    }

    @IBAction func search(_ sender: UIButton) {
        let request = MKLocalSearch.Request() // A class in the class(????) Builds object in the local search
        request.naturalLanguageQuery = restaurauntSelection.restName
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
       // request.region = MKCoordinateRegion(center: currentLocation.coordinate, span: span)
        let search = MKLocalSearch(request: request)

        
        search.start { (response, error) in
            guard let response = response
            else {return}
           for mapItem in response.mapItems{
                self.places.append(mapItem)
               let annotation = MKPointAnnotation()
               annotation.coordinate = mapItem.placemark.coordinate
               annotation.title = mapItem.name
               self.mapOutlet.addAnnotation(annotation)
            }
        }
    }
    
    
}
