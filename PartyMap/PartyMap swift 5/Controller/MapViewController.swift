//
//  MapViewController.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 5/10/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

protocol MapViewControllerDelegate {
    func toggleMenu()
    func toggleEventInfo()
}

class MapViewController: UIViewController {

    // outlets
    @IBOutlet weak var partyMap: MKMapView!
    @IBOutlet weak var SideMenuButtonOutlet: UIButton!

    // check
    @IBOutlet weak var openBottonMenu: UIButton! // to check
    

    @IBAction func openEvent(_ sender: Any) {
        delegate?.toggleEventInfo()
        print("has been opend")
        
    }
    
    
    // properties
    var previousLocation = CLLocation()
    let locationManager = CLLocationManager()
    let zoomIn: Double = 1000
    var delegate: MapViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationService()
        addAnotation()
    }
    
    // checking
    
    func addAnotation() {
        var anotation = MKPointAnnotation()
        anotation.title = "hello"
        anotation.coordinate = CLLocationCoordinate2D(latitude: 59.825090, longitude: 30.333071)
        partyMap.addAnnotation(anotation)
    }
    
    @IBAction func SideMenuButton(_ sender: Any) {
        delegate?.toggleMenu()
    }
    
    func setUpLocationManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func checkLocationService() {
        if CLLocationManager.locationServicesEnabled() {
            setUpLocationManager()
            checkLocationAuthorization()
        } else {
            // do later
            print("error checkLocationService")
        }
    }
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus(){
        case .notDetermined:
            break
        case .restricted:
            break
        case .denied:
            break
        case .authorizedAlways:
            break
        case .authorizedWhenInUse:
            startTrackUserLocation()
        @unknown default:
            break
        }
    }
    
    func startTrackUserLocation() {
        partyMap.showsUserLocation = true
        setRegion()
        locationManager.stopUpdatingLocation()
    }
    
    func setRegion() {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: zoomIn, longitudinalMeters: zoomIn)
            partyMap.setRegion(region, animated: true)
        }
    }
}


