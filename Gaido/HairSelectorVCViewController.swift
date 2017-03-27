//
//  HairSelectorVCViewController.swift
//  Gaido
//
//  Created by Thomas Threlkeld on 3/26/17.
//  Copyright © 2017 Thomas Threlkeld. All rights reserved.
//

import UIKit

class HairSelectorVCViewController: UIViewController {
    @IBAction func continuePressed(_ sender: Any) {
        if self.curHairNum != -1{
            performSegue(withIdentifier: "HairToFinish", sender: self)
        } else{
            let alert = UIAlertController(title: "Must Select Color", message: "Please select a hair color.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    var skinColor = UIImage()
    
    @IBOutlet weak var actualSkinColor: UIImageView!
    
    var skinNumber = Int()
    var userName = String()
    var nickName = String()
    var curHairNum = -1
    var userEmail = String()
    var userPass = String()

    @IBOutlet weak var hairImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.actualSkinColor.image = self.skinColor

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var skinColorImageView: UIImageView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var button1: UIButton!
    @IBAction func button1Pressed(_ sender: Any) {
        self.hairImageView.image = UIImage(named: "Hair_DarkGrey")
        self.curHairNum = 0
        
    }
    @IBOutlet weak var button2: UIButton!
    
    @IBAction func button2Pressed(_ sender: Any) {
        self.hairImageView.image = UIImage(named: "Hair_Orange_or_Red")
        self.curHairNum = 1
    }
    @IBOutlet weak var button2Pressed: UIButton!

    @IBOutlet weak var button3: UIButton!
    @IBAction func button3Pressed(_ sender: Any) {
        self.hairImageView.image = UIImage(named: "Hair_Brown1")
        self.curHairNum = 2
    }
    @IBAction func button4Pressed(_ sender: Any) {
         self.hairImageView.image = UIImage(named: "Hair_Blonde")
        self.curHairNum = 3
    }
    
    @IBOutlet weak var button4: UIButton!
    
    @IBOutlet weak var button5: UIButton!
    
    @IBAction func button5Pressed(_ sender: Any) {
        self.hairImageView.image = UIImage(named: "Hair_LightGrey")
        self.curHairNum = 4
    }
    @IBOutlet weak var button6: UIButton!
    
    @IBAction func button6Pressed(_ sender: Any) {
        self.hairImageView.image = UIImage(named: "Hair_Black")
        self.curHairNum = 5
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let vc = (segue.destination as? AvatarFinishedViewController){
            vc.skinNumber = self.skinNumber
            vc.curHairNum = self.curHairNum
            vc.userName = self.userName
            vc.nickName = self.nickName
            vc.userEmail = self.userEmail
            vc.userPass = self.userPass
        }
    }
    

}
