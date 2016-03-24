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
        geoCoder.geocodeAddressString(restaurant.location, completionHandler: { placemarks, error in
            
            if error != nil {
                print(error)
                return
            }
            
            if placemarks != nil && placemarks!.count > 0 {
            
                let placemark = placemarks![0] as CLPlacemark
            
                let restaurant = MKPointAnnotation()
                
                restaurant.coordinate = placemark.location!.coordinate
                
                restaurant.title = self.restaurant.name
                restaurant.subtitle = self.restaurant.type
                
                self.mapView.showAnnotations([restaurant], animated: true)
                self.mapView.selectAnnotation(restaurant, animated: true)
                
                
            }
            
            })
        
    }
    
    
    
    

}
