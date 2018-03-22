//
//  FirstPageController.swift
//  On-The-House
//
//  Created by beier nie on 21/3/18.
//  Copyright © 2018 RMIT. All rights reserved.
//

import Foundation
import UIKit

class LogInPageController : UIViewController {

    
    @IBOutlet weak var EmailInputBox: UITextField!

    @IBOutlet weak var PasswordInputBox: UITextField!
    
    
    
    override func viewDidLoad(){
        
        EmailInputBox.placeholder="Email"
        PasswordInputBox.placeholder="Password"
        super.viewDidLoad()

    
    
}
}
