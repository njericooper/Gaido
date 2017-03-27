//
//  ProfileViewController.swift
//  Gaido
//
//  Created by Thomas Threlkeld on 3/27/17.
//  Copyright © 2017 Thomas Threlkeld. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import FirebaseAuth
import FirebaseDatabase

class ProfileViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var nameLabel: UILabel!

    @IBAction func rightNavButtonSelected(_ sender: Any) {
    }
    @IBAction func leftNavButtonSelected(_ sender: Any) {
    }
    @IBOutlet weak var mapView: MKMapView!
    @IBAction func middleNavButtonSelected(_ sender: Any) {
    }
    @IBOutlet weak var currentCityLabel: UILabel!
    @IBAction func musicCategoryPressed(_ sender: Any) {
    }
    @IBOutlet weak var foodCategoryPressed: UIButton!
    @IBOutlet weak var attractionsCategoryPressed: UIButton!
    
    let userID = FIRAuth.auth()?.currentUser?.uid
    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
       // mapView.delegate = self
        mapView.centerCoordinate = (self.locationManager.location?.coordinate)!
        
        FIRDatabase.database().reference().child("users").child(self.userID!).observeSingleEvent(of: .value, with: { (snapshot) in
            if let snapshots = snapshot.children.allObjects as? [FIRDataSnapshot]{
                for snap in snapshots{
                    if snap.key == "name"{
                        self.nameLabel.text = snap.value as! String?
                    }
                    self.currentCityLabel.text = "Memphis"
                }
            }
        })


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

}
