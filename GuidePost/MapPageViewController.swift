//
//  MapPageViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 9/12/16.
//  Copyright (c) 2016 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class MapPageViewController: UIViewController {
    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var mapView: MKMapView!
    
    
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    @IBAction func previosButtonPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: "MapToStop", sender: nil)
    }
    
   var passedEvent = EventObject()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialLocation = passedEvent.defaultLocation

        centerMapOnLocation(location: CLLocation(latitude: initialLocation.latitude, longitude: initialLocation.longitude))
        
        // show stop on map
        let eventStop = EventAnnotation(title: "First Spot Name",
                              locationName: "Waikiki Gateway Park",
                              discipline: "Sculpture",
                              coordinate: initialLocation)
        
        
        
        
        
        
        
        mapView.addAnnotation(eventStop)

    }
    
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "MapToStop"{
            let vc = segue.destination as! StopUserViewController
            vc.passedEvent = passedEvent
        }
    }
    
}
