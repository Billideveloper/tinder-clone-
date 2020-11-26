//
//  signUpVc.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage
import Firebase

class signUpVc: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet var selectImageGesture: UITapGestureRecognizer!
    
    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var fullEmail: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var signUp: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet var signIngesture: UITapGestureRecognizer!
    
    let db = Database.database().reference()
    
    var image: UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        myGetsures()
        
    }
    

    @IBAction func takeToSignIn(_ sender: Any) {
        
        self.performSegue(withIdentifier: "signIn", sender: nil)
    }
    
    
    
    
    @IBAction func signUpbtnClicked(_ sender: Any) {
        
        
        self.view.endEditing(true)
        signUpuser()
        
        
        
    }
    
    
    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
}
