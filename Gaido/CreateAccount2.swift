//
//  CreateAccount2.swift
//  Gaido
//
//  Created by Thomas Threlkeld on 3/11/17.
//  Copyright © 2017 Thomas Threlkeld. All rights reserved.
//

import UIKit

class CreateAccount2: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var diamondFace: UIButton!
    @IBOutlet weak var ovalFace: UIButton!
    @IBOutlet weak var rectangleFace: UIButton!
    @IBOutlet weak var rndRectangleFace: UIButton!
    @IBOutlet weak var squareFace: UIButton!
    @IBOutlet weak var dwnTriangle: UIButton!
    @IBOutlet weak var upTriangle: UIButton!
    
    @IBOutlet weak var selectedFace: UIImageView!
    
    @IBAction func diamondFaceTouched(_ sender: Any) {
        selectedFace.image = diamondFace.imageView?.image
    }
    @IBAction func ovalFaceTouched(_ sender: Any) {
        selectedFace.image = ovalFace.imageView?.image
    }
  
    @IBAction func rectFaceTouched(_ sender: Any) {
        selectedFace.image = rectangleFace.imageView?.image
    }
    @IBAction func rndRectTouched(_ sender: Any) {
        selectedFace.image = rndRectangleFace.imageView?.image
    }
    
    @IBAction func squareFaceTouched(_ sender: Any) {
        selectedFace.image = squareFace.imageView?.image
    }
    @IBAction func dwnTriangleFaceTouched(_ sender: Any) {
        selectedFace.image = dwnTriangle.imageView?.image
    }
    @IBAction func upTriangleTouched(_ sender: Any) {
        selectedFace.image = upTriangle.imageView?.image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
