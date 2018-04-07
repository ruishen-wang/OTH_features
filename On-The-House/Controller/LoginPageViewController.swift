//
//  FirstPageController.swift
//  On-The-House
//
//  Created by beier nie on 21/3/18.
//  Copyright © 2018 RMIT. All rights reserved.
//

import Foundation
import UIKit

class LogInPageViewController : UIViewController {
    
    
    
    @IBOutlet weak var EmailInputBox: UITextField!
    
    
    @IBOutlet weak var PasswordInputBox: UITextField!
    
    var memberToken:Member?
    
    override func viewDidLoad() {
        
        
        EmailInputBox.placeholder="Email"
        PasswordInputBox.placeholder="Password"
        
        super.viewDidLoad()
        
        
    }
    
    func setMember() {
        // String "email=nazisanh@gmail.com"
        if let usernameT = EmailInputBox.text, let passwordT = PasswordInputBox.text{
            let postBodys = "email=\(usernameT)&password=\(passwordT)"
            //let postBody = "email=nazisang@gmail.com&password=summer1993"
            print(postBodys)
            let memberService = MemberService()
            memberService.login(postBody: postBodys) { (member) in
                self.memberToken = member
                print(member?.status)
            }
        }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.setMember()
        if memberToken != nil{
            print("here3")
            while memberToken?.status == nil {
            }
            print("here2")
            if let status = memberToken?.status{
                if status == "success"{
                    let nextView: MyAccountPageViewController = segue.destination as! MyAccountPageViewController
                    if let nickname = self.memberToken?.nickname{
                        print(nickname)
                        nextView.nickName = nickname
                        // String "email=nazisanh@gmail.com"
                    }
                }else if status == "error"{
                    if let message = memberToken?.status as? String{
                        ZuberAlert().showAlert(title: "Login Alert", subTitle: "Sorry you don't have right to access", buttonTitle: "Cancle", otherButtonTitle: "Confirm") { (OtherButton) -> Void in
                            print("Confirmed")
                        }
                }
                }
            }
        }
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let nextView: MyAccountPageViewController = segue.destination as! MyAccountPageViewController
//        nextView.nickName = "nicknamechange"
//    }
    

    
}

