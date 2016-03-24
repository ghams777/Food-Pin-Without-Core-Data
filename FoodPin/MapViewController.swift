//
//  MapViewController.swift
//  FoodPin
//
//  Created by Admin on 3/24/16.
//  Copyright © 2016 Morra. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var restaurant: Restaurant!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Convert address to coordinate and annotate it on map
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString("524 Ct St, Brooklyn, NY 11231", completionHandler: { placemarks, error in
            
            
//            let annotation = MKPointAnnotation()
//            annotation.title = "Times Square"
//            annotation.coordinate = placemark.location.coordinate
//            self.mapView.showAnnotations([annotation], animated: true)
//            self.mapView.selectAnnotation(annotation, animated: true)
        })
        
        
    }
    
    
    
    

}
