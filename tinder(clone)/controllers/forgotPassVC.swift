//
//  forgotPassVC.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import UIKit
import FirebaseAuth
import Firebase


class forgotPassVC: UIViewController {
    

    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func resetpassbtn(_ sender: Any) {
        
        guard let userEmail = email.text, userEmail != "" else{
            print(Error_Empty_Email)
            return
        }
        
        self.view.endEditing(true)
        Api.User.resetPassword(email: email.text!) {
            print("A reset link has been sended")
            
            self.dismiss(animated: true, completion: nil)
            
            
        } onFailure: { (error) in
            print(Error_Empty_TryAgain)
        }

        
        
        
    }
    
    
    @IBAction func backbtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
