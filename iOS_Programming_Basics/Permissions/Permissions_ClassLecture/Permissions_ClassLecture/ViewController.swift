//
//  ViewController.swift
//  Permissions_ClassLecture
//
//  Created by Kevin Tran on 3/29/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit
import Photos
import CoreLocation
import Contacts
import EventKit

class ViewController: UIViewController {
    
    //adding photolibrary access
    //add framework (in targets), import framework,
    //add function
    
    //adding location framework
    //add corelocation framework, import framework
    //create variable so its available throughout the lifecycle of the app
    //request in use authorization
    //update plist with privacy settings
    
    //adding contact access
    //add framework, import framework
 
    
    //
    
    
    
    
    let locationManager = CLLocationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        getPhotosPermission()
//        locationManager.requestWhenInUseAuthorization()
//        setReminderAuthorizationStatus()
        
    }
    
    func setReminderAuthorizationStatus() {
        EKEventStore().requestAccess(to: EKEntityType.reminder) { (Authorized, error) in
            if Authorized {
                print("authorized")
            } else {
                print("denied")
            }
        }
    }
    
    func getPhotosPermission() {
        PHPhotoLibrary.requestAuthorization { (authoriationStatus) in
            switch authoriationStatus {
            case .authorized:
                print("authorized")
            case .denied:
                print("denied")
            case .restricted:
                print("restricted")
            case .notDetermined:
                print("not determined")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


