//
//  AvatarFinishedViewController.swift
//  Gaido
//
//  Created by Thomas Threlkeld on 3/27/17.
//  Copyright © 2017 Thomas Threlkeld. All rights reserved.
//

import UIKit
import Foundation
import FirebaseDatabase
import FirebaseAuth

class AvatarFinishedViewController: UIViewController {
    var skinNumber = Int()
    var userName = String()
    var nickName = String()
    var curHairNum = Int()
    var userEmail = String()
    var userPass = String()
    
    var skinColorArray = ["Rectangle 11","Rectangle 21","Rectangle 31", "Rectangle 241", "Rectangle 261", "Rectangle 281"]
    var hairColorArray = ["Hair_DarkGrey", "Hair_Orange_or_Red", "Hair_Brown1","Hair_Blonde", "Hair_LightGrey", "Hair_Black"]
    
    @IBOutlet weak var hairImageView: UIImageView!
    @IBOutlet weak var faceOutlineImageView: UIImageView!

    @IBAction func nextPressed(_ sender: Any) {
        FIRAuth.auth()?.createUser(withEmail: userEmail, password: userPass, completion: { (user: FIRUser?, error) in
                if error != nil {
                    print(error as Any)
                    return
                }
                guard let uid = user?.uid else{
                    return
                }

            let tempUser = User()
            var tempDict = [String:Any]()
            tempDict["name"] = self.userName
            tempDict["nickName"] = self.nickName
            tempDict["hair"] = self.curHairNum
            tempDict["skinShade"] = self.skinNumber
            tempDict["location"] = ""
            tempDict["userEmail"] = self.userEmail
            tempDict["userPass"] = self.userPass
        
            self.registerUserIntoDatabaseWithUID(uid, values: tempDict as [String : Any])
        })
        
        
        
    }
    
    fileprivate func registerUserIntoDatabaseWithUID(_ uid: String, values: [String: Any]) {
        let ref = FIRDatabase.database().reference()
        let usersReference = ref.child("users").child(uid)
        
        usersReference.updateChildValues(values, withCompletionBlock: { (err, ref) in
            
            if err != nil {
                print(err as Any)
                return
            }
            
            self.performSegue(withIdentifier: "AvatarDoneToProfile", sender: self)
        })
    }

    
    @IBOutlet weak var skinColorImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.skinColorImageView.image = UIImage(named: skinColorArray[self.skinNumber])
        self.hairImageView.image = UIImage(named: hairColorArray[self.curHairNum])

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
