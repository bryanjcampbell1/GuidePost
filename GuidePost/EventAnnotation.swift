//
//  EventAnnotation.swift
//  GuidePost
//
//  Created by Bryan Campbell on 1/27/17.
//  Copyright © 2017 Bryan Campbell. All rights reserved.
//

import MapKit

class EventAnnotation: NSObject, MKAnnotation {
    let title: String?
    let locationName: String
    let discipline: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName: String, discipline: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return locationName
    }
}
