//
//  LoginViewController.swift
//  Gaido
//
//  Created by Thomas Threlkeld on 3/11/17.
//  Copyright © 2017 Thomas Threlkeld. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit


class LoginViewController: UIViewController {
    
    var gaidoRed = UIColor()

    @IBOutlet weak var loginButton: UIButton!
    @IBAction func loginPressed(_ sender: Any) {
    }
    
    @IBOutlet weak var createAccount: UIButton!
    
    @IBAction func createAccountPressed(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gaidoRed = (createAccount.backgroundColor)!
        let facebookLoginButton = FBSDKLoginButton()
        facebookLoginButton.center = self.view.center
        self.view.addSubview(facebookLoginButton)
        
        loginButton.layer.borderColor = gaidoRed.cgColor
        loginButton.layer.borderWidth = 2.0
        //loginButton.clipsToBounds = true

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
