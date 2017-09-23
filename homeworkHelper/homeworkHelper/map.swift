//
//  map.swift
//  homeworkHelper
//
//  Created by Gifton Okoronkwo on 9/23/17.
//  Copyright © 2017 Gifton Okoronkwo. All rights reserved.
//

import Foundation
import MapKit

class map {
    var name: String?
    var boundary: [CLLocationCoordinate2D] = []
    
    var midCoordinate = CLLocationCoordinate2D()
    var overlayTopLeftCoordinate = CLLocationCoordinate2D()
    var overlayTopRightCoordinate = CLLocationCoordinate2D()
    var overlayBottomLeftCoordinate = CLLocationCoordinate2D()
    var overlayBottomRightCoordinate = CLLocationCoordinate2D()
    
    var overlayBoundingMapRect: MKMapRect?
}
