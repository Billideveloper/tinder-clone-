//
//  forgotPassVC.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import UIKit

class forgotPassVC: UIViewController {
    
    
    
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func resetpassbtn(_ sender: Any) {
    }
    
    
    @IBAction func backbtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
