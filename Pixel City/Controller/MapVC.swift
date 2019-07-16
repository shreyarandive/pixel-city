//
//  ViewController.swift
//  Pixel City
//
//  Created by Shreya Randive on 7/16/19.
//  Copyright © 2019 Shreya Randive. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }

    @IBAction func mapBtnPressed(_ sender: Any) {
    }
}

extension MapVC: MKMapViewDelegate {
    
}

