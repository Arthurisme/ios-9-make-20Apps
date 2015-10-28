//
//  ViewController.swift
//  MapViews
//
//  Created by Arthur on 2015-10-28.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {

   
    @IBOutlet weak var MapViews: MKMapView!
    
    @IBOutlet weak var SegmentControl: UISegmentedControl!
    
    var manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func MapTypeControl(sender: AnyObject) {
        
        if(SegmentControl.selectedSegmentIndex==0){
            MapViews.mapType = MKMapType.Standard
            
        }
        if(SegmentControl.selectedSegmentIndex==1){
            MapViews.mapType = MKMapType.Satellite
            
        }
        if(SegmentControl.selectedSegmentIndex==2){
            MapViews.mapType = MKMapType.Hybrid
            
        }
    }

    @IBAction func LocateMe(sender: AnyObject) {
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        
        manager.startUpdatingLocation()
        MapViews.showsUserLocation = true
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let userLocation:CLLocation = locations[0] as CLLocation
        manager.stopUpdatingLocation()
        
        let location = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude)
        let span = MKCoordinateSpanMake(0.5, 0.5)
        
        let region = MKCoordinateRegion(center: location, span: span)
        
        MapViews.setRegion(region, animated: true)
        
    }
}

