//
//  DropablePin.swift
//  Pixel City
//
//  Created by Shreya Randive on 7/16/19.
//  Copyright © 2019 Shreya Randive. All rights reserved.
//

import UIKit
import MapKit

class DropablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
     init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
