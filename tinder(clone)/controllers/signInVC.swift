//
//  signInVC.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import UIKit
import Firebase

class signInVC: UIViewController {


    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet var resetgeture: UITapGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        titleLabel.isUserInteractionEnabled = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(resetPass(_:)))
        titleLabel.addGestureRecognizer(tap)
    }
    
    
    func setupUI(){
        labeltext()
        
    }
    
    
    @IBAction func resetPass(_ sender: Any) {
        
        
        self.performSegue(withIdentifier: "resetvc", sender: nil)
        
    }
    @IBAction func signInbtn(_ sender: Any) {
        
        
    }
    
    
    @IBAction func backbtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    

}
