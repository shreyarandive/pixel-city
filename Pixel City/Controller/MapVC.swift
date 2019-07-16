//
//  ViewController.swift
//  Pixel City
//
//  Created by Shreya Randive on 7/16/19.
//  Copyright © 2019 Shreya Randive. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    let authorizationStatus = CLLocationManager.authorizationStatus()
    let regionRadius: Double = 1000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
    }

    @IBAction func mapBtnPressed(_ sender: Any) {
        if authorizationStatus == .authorizedAlways || authorizationStatus == .authorizedWhenInUse {
            centerMaponUserLocation()
        }
    }
}

extension MapVC: MKMapViewDelegate {
    func centerMaponUserLocation() {
        guard let userLocationCoordinate = locationManager.location?.coordinate else { return }
        let userLocationCoordinateRegion = MKCoordinateRegion.init(center: userLocationCoordinate, latitudinalMeters: regionRadius * 2.0, longitudinalMeters: regionRadius * 2.0)
        mapView.setRegion(userLocationCoordinateRegion, animated: true)
    }
}

extension MapVC: CLLocationManagerDelegate {
    func configureLocationServices() {
        if authorizationStatus == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        centerMaponUserLocation()
    }
}

