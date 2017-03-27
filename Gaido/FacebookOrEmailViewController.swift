//
//  FacebookOrEmailViewController.swift
//  Gaido
//
//  Created by Thomas Threlkeld on 3/27/17.
//  Copyright © 2017 Thomas Threlkeld. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class FacebookOrEmailViewController: UIViewController {
    @IBAction func facebookPressed(_ sender: Any) {
    }
    @IBAction func emailAndPasswordPressed(_ sender: Any) {
        self.emailPasswordView.isHidden = false
    }

    @IBAction func continuePressed(_ sender: Any) {
        if emailTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true || reenterPasswordTextField.text?.isEmpty == true{
            let alert = UIAlertController(title: "Missing Information", message: "Check that you didn't leave anything empty.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)

        } else if passwordTextField.text != reenterPasswordTextField.text{
            let alert = UIAlertController(title: "Passwords Don't Match", message: "Check that your passwords match.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "okay", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)

        } else{
            performSegue(withIdentifier: "EmailToName", sender: self)
        }
    }
    
    @IBAction func cancelPressed(_ sender: Any) {
        self.emailPasswordView.isHidden = true
    }
    @IBOutlet weak var reenterPasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var emailPasswordView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailPasswordView.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let vc = segue.destination as? CreateAccount1{
            vc.userEmail = self.emailTextField.text!
            vc.userPass = self.passwordTextField.text!
        }
    }
    

}
