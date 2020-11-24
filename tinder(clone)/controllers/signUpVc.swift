//
//  signUpVc.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import UIKit

class signUpVc: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet var selectImageGesture: UITapGestureRecognizer!
    
    @IBOutlet weak var fullName: UITextField!
    
    @IBOutlet weak var fullEmail: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var signUp: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet var signIngesture: UITapGestureRecognizer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        myGetsures()
        
    }
    
    
    func setupUI(){
        
        signuptitle()
        setImageview()
        
    }
    
    
    
    
    
    
    @IBAction func selectimageGesturebtn(_ sender: Any) {
        
        
    }
    
    
    @IBAction func takeToSignIn(_ sender: Any) {
        
    }
    
    
    @IBAction func signUpbtnClicked(_ sender: Any) {
    }
    
    
    
    @IBAction func backBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
}
