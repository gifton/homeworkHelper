//
//  mapViewController.swift
//  homeworkHelper
//
//  Created by Gifton Okoronkwo on 9/23/17.
//  Copyright © 2017 Gifton Okoronkwo. All rights reserved.
//

import UIKit
import MapKit
class mapViewController: UIViewController {
    
    @IBOutlet var mapView: MKMapView!
    //map and location info
    let destination = "18345 Campus Way NE, Bothell, WA 98011"
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Map settings
        //ask for always on locacion
        self.locationManager.requestAlwaysAuthorization()
        //get user location
        func LocalLocationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            let locValue:CLLocationCoordinate2D = manager.location!.coordinate
            print("locations = \(locValue.latitude) \(locValue.longitude)")
        }
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self as? CLLocationManagerDelegate
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()
        }
    
        //annotation
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(destination, completionHandler: {
            placemarks, error in
            if let error = error {
                print(error)
                return
            }
            if let placemarks = placemarks {
                // Get the first placemark
                let placemark = placemarks[0]
                // Add annotation
                let annotation = MKPointAnnotation()
                annotation.title = "Go Zodiacs!"
                //annotation.subtitle = "25 minutes"
                if let location = placemark.location {
                    annotation.coordinate = location.coordinate
                    // Display the annotation
                    self.mapView.showAnnotations([annotation], animated: true)
                    self.mapView.selectAnnotation(annotation, animated: true)
                }
                //Set the zoom level
                let region = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 12000, 12000)
                self.mapView.setRegion(region, animated: false)
            } })

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    //map directions
    

}
extension mapViewController: MKMapViewDelegate {
    
}
