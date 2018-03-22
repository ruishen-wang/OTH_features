//
//  SignInPageController.swift
//  On-The-House
//
//  Created by beier nie on 21/3/18.
//  Copyright © 2018 RMIT. All rights reserved.
//

import Foundation
import UIKit

class SignInPageController : UIViewController{


    @IBOutlet weak var UserNameBox: UITextField!
    @IBOutlet weak var FirstNameBox: UITextField!
    @IBOutlet weak var LastNameBox: UITextField!
    @IBOutlet weak var EmailBox: UITextField!
    @IBOutlet weak var PasswordBox: UITextField!
    @IBOutlet weak var ConfirmPasswordBox: UITextField!
    @IBOutlet weak var PostCodeBox: UITextField!
    
    @IBOutlet weak var StatePicker: UIPickerView!
    //var items: [String] = ["NoName1","NoName2","NoName3"] // Set through another ViewController
    //var itemAtDefaultPosition: String?  //Set through another ViewController
    
    @IBOutlet weak var CountryPicker: UIPickerView!
    
    @IBOutlet weak var TimeZonePicker: UIPickerView!
    
    override func viewDidLoad(){
        
        UserNameBox.placeholder="User Name"
        FirstNameBox.placeholder="First Name"
        LastNameBox.placeholder="Last Name"
        EmailBox.placeholder="Email Address"
        PasswordBox.placeholder="Password"
        ConfirmPasswordBox.placeholder="Confirm Password"
        PostCodeBox.placeholder="Post Code"
        
        super.viewDidLoad()
        
        
        
    }

}
