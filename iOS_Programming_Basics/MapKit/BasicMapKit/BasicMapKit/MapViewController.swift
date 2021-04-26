//
//  MapViewController.swift
//  BasicMapKit
//
//  Created by Kevin Tran on 2/9/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        let home = MKPointAnnotation()
        home.coordinate = CLLocationCoordinate2D(latitude: 37.335480, longitude: -121.893028)
        home.title = "San Jose Ca"
        
        let pins = [home]
        myMapView.addAnnotations(pins)
        
        let myRegion = MKCoordinateRegionMakeWithDistance(home.coordinate, 5_500_000,5_500_000)
        myMapView.setRegion(myRegion, animated: true)
        
    }
    
    func mapView(_ mapView: MKMapView!, viewFor annotation: MKAnnotation!) -> MKAnnotationView!{
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier")
        pin.canShowCallout = true
        return pin
    
    }
    
}
