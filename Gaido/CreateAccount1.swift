//
//  CreateAccount1.swift
//  Gaido
//
//  Created by Thomas Threlkeld on 3/11/17.
//  Copyright © 2017 Thomas Threlkeld. All rights reserved.
//

import UIKit

class CreateAccount1: UIViewController{
    @IBOutlet weak var whoAreYouImageView: UIImageView!

    @IBOutlet weak var nickNameTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mapBackgroundImageView: UIImageView!
    @IBOutlet weak var continueButton: UIButton!
    
    @IBAction func continuePressed(_ sender: Any) {
        if nameTextField.text == ""{
            print("must choose name")
        }else{
           // performSegue(withIdentifier: "NameToFace", sender: self)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //creating bottom border for textField
        let border = CALayer()
        let width = CGFloat(1.4)
        border.borderColor = UIColor.black.withAlphaComponent(0.6).cgColor
        border.frame = CGRect(x: 0, y: nameTextField.frame.size.height - width, width:  nameTextField.frame.size.width, height: nameTextField.frame.size.height)
        border.borderWidth = width
        nameTextField.layer.addSublayer(border)
        nameTextField.layer.masksToBounds = true
        
        //creating bottom border for nicknameTextfield. Should probably just create reusable function to do this.
        let border2 = CALayer()
        let width2 = CGFloat(1.4)
        border2.borderColor = UIColor.black.withAlphaComponent(0.6).cgColor
        border2.frame = CGRect(x: 0, y: nickNameTextField.frame.size.height - width2, width:  nickNameTextField.frame.size.width, height: nickNameTextField.frame.size.height)
        border2.borderWidth = width2
        nickNameTextField.layer.addSublayer(border2)
        nickNameTextField.layer.masksToBounds = true

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
