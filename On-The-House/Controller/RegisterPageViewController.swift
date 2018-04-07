//
//  SignInPageController.swift
//  On-The-House
//
//  Created by beier nie on 21/3/18.
//  Copyright © 2018 RMIT. All rights reserved.
//

import Foundation
import UIKit

class RegisterPageViewController : UIViewController{
    
    //var UserNameBox: UITextField
    
    @IBOutlet weak var UserNameBox: UITextField!
    @IBOutlet weak var FirstNameBox: UITextField!
    @IBOutlet weak var LastNameBox: UITextField!
    @IBOutlet weak var EmailBox: UITextField!
    @IBOutlet weak var PasswordBox: UITextField!
    @IBOutlet weak var ConfirmPasswordBox: UITextField!
    @IBOutlet weak var PostCodeBox: UITextField!
    @IBOutlet weak var StateDropBox: UIView!
    @IBOutlet weak var CountryDropBox: UIView!
    @IBOutlet weak var TimeZoneDropBox: UIView!
    
    
    
    override func viewDidLoad(){
        
       
        UserNameBox.placeholder="User Name"
        FirstNameBox.placeholder="First Name"
        LastNameBox.placeholder="Last Name"
        EmailBox.placeholder="Email Address"
        PasswordBox.placeholder="Password"
        ConfirmPasswordBox.placeholder="Confirm Password"
        PostCodeBox.placeholder="Post Code"
        
        super.viewDidLoad()
        
        
        let stateTitle = "State"
        let statechoices = ["New South Wales", "Queensland", "South Australia", "Tasmania", "Victoria", "Western Australia", "Australian Capital Territory"]
        let rect = CGRect(x: 185, y: 370, width: self.view.frame.width - 185, height: 65)
        let dropBoxView = DropBox(parentVC: self, title: stateTitle, items: statechoices, frame: rect)
        dropBoxView.isHightWhenShowList = true
        dropBoxView.willShowOrHideBoxListHandler = { (isShow) in
            if isShow { NSLog("will show choices") }
            else { NSLog("will hide choices") }
        }
        dropBoxView.didShowOrHideBoxListHandler = { (isShow) in
            if isShow { NSLog("did show choices") }
            else { NSLog("did hide choices") }
        }
        dropBoxView.didSelectBoxItemHandler = { (row) in
            NSLog("selected No.\(row): \(dropBoxView.currentTitle())")
        }
        self.view.addSubview(dropBoxView)
        
        let countryTitle = "Country"
        let countrychoices = ["Australia", "New Zealand"]
        let rect1 = CGRect(x: 185, y: 440, width: self.view.frame.width - 185, height: 65)
        let dropBoxView1 = DropBox(parentVC: self, title: countryTitle, items: countrychoices, frame: rect1)
        dropBoxView1.isHightWhenShowList = true
        dropBoxView1.willShowOrHideBoxListHandler = { (isShow) in
            if isShow { NSLog("will show choices") }
            else { NSLog("will hide choices") }
        }
        dropBoxView1.didShowOrHideBoxListHandler = { (isShow) in
            if isShow { NSLog("did show choices") }
            else { NSLog("did hide choices") }
        }
        dropBoxView1.didSelectBoxItemHandler = { (row) in
            NSLog("selected No.\(row): \(dropBoxView1.currentTitle())")
        }
        self.view.addSubview(dropBoxView1)
        
        
        let timeZoneTitle = "Time Zone"
        let timeZonechoices = ["Australia", "New Zealand"]
        let rect2 = CGRect(x: 0, y: 440, width: self.view.frame.width - 180, height: 65)
        let dropBoxView2 = DropBox(parentVC: self, title: timeZoneTitle, items: timeZonechoices, frame: rect2)
        dropBoxView2.isHightWhenShowList = true
        dropBoxView2.willShowOrHideBoxListHandler = { (isShow) in
            if isShow { NSLog("will show choices") }
            else { NSLog("will hide choices") }
        }
        dropBoxView2.didShowOrHideBoxListHandler = { (isShow) in
            if isShow { NSLog("did show choices") }
            else { NSLog("did hide choices") }
        }
        dropBoxView2.didSelectBoxItemHandler = { (row) in
            NSLog("selected No.\(row): \(dropBoxView2.currentTitle())")
        }
        self.view.addSubview(dropBoxView2)
        
        
        
    }
    
}



