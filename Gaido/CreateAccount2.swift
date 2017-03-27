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
    var name = String()
    var selectedImage = UIImage()
    var curSkinNum = -1
    var nickName = String()
    var userEmail = String()
    var userPass = String()
    @IBOutlet weak var faceWithHole: UIImageView!
    @IBOutlet weak var faceColor: UIImageView!
    
    @IBOutlet weak var selectedFace: UIImageView!
    
    @IBAction func continuePressed(_ sender: Any) {
        if self.curSkinNum != -1{
            performSegue(withIdentifier: "SkinToHair", sender: self)
        } else{
            let alert = UIAlertController(title: "Must Select Shade", message: "Please select a skin shade.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    @IBOutlet weak var button1: UIButton!
    @IBAction func button1Pressed(_ sender: Any) {
        faceColor.image = button1.imageView?.image
        self.selectedImage = (button1.imageView?.image)!
        self.curSkinNum = 0
    }
    @IBOutlet weak var button2: UIButton!
   
    @IBAction func button2Pressed(_ sender: Any) {
         faceColor.image = button2.imageView?.image
        self.selectedImage = (button2.imageView?.image)!
        self.curSkinNum = 1
    }
    @IBOutlet weak var button3: UIButton!
    
    @IBAction func button3Pressed(_ sender: Any) {
         faceColor.image = button3.imageView?.image
        self.selectedImage = (button3.imageView?.image)!
        self.curSkinNum = 2
    }
    @IBOutlet weak var button4: UIButton!
    @IBAction func button4Pressed(_ sender: Any) {
         faceColor.image = button4.imageView?.image
        self.selectedImage = (button4.imageView?.image)!
        self.curSkinNum = 3
    }
    
    @IBOutlet weak var button5: UIButton!
    
    @IBAction func button5Pressed(_ sender: Any) {
         faceColor.image = button5.imageView?.image
        self.selectedImage = (button5.imageView?.image)!
        self.curSkinNum = 4
    }
    
    @IBOutlet weak var button6: UIButton!
    @IBAction func button6Pressed(_ sender: Any) {
         faceColor.image = button6.imageView?.image
        self.selectedImage = (button6.imageView?.image)!
        self.curSkinNum = 5
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = name
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = (segue.destination as? HairSelectorVCViewController){
            vc.skinColor = self.selectedImage
            vc.skinNumber = self.curSkinNum
            vc.userName = self.nameLabel.text!
            vc.nickName = self.nickName
            vc.userEmail = self.userEmail
            vc.userPass = self.userPass
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
