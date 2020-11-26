//
//  signUpVc+UI.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage
import Firebase


extension signUpVc{
    
    func validate(){
        guard let username = self.fullName.text , !username.isEmpty else {
            
            return
            
        }
        
        guard let useremail = self.fullEmail.text, !useremail.isEmpty else {
            
            return
            
        }
        
        guard let password = self.password.text, !password.isEmpty else {
            
            return
            
        }
    }
    
    
    func setupUI(){
        
        signuptitle()
        setImageview()
        titleLabel.isUserInteractionEnabled = true
        imageView.isUserInteractionEnabled = true
//        password.passwordRules = UITextInputPasswordRules(descriptor: "required: upper; required: lower; required: digit, [-().&@?'#,/&quot;+]; max-consecutive: 2; minlength: 8;")
        
    }
    
    
    func myGetsures(){
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageView.addGestureRecognizer(tap)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(takeToSignIn(_:)))
        titleLabel.addGestureRecognizer(tap2)
    }
    
    @objc func selectImage(){
        
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        picker.delegate = self
        self.present(picker, animated: true, completion: nil)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func signuptitle(){
        
        let title = "Allready have account? "
        
        let subtitle = "SignIn"
        
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor(white: 0, alpha: 0.60)
                                                                                   
        ])
        
        let attributedTex = NSMutableAttributedString(string: subtitle, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor.black
                                                               
                                                                        
        ])
        
        attributedText.append(attributedTex)
        
        titleLabel.attributedText = attributedText
    }
    
    
    func setImageview(){
        
        imageView.backgroundColor = UIColor(white: 0, alpha: 0.65)
        imageView.layer.cornerRadius = self.imageView.layer.frame.width/2
        
    }
    
    
    func signUpuser(){
        
      
        Api.User.signUpuser(withUserinfo: self.fullName.text!, useremail: self.fullEmail.text!, userpassword: self.password.text!, profileimage: self.image) {
            
            DispatchQueue.main.async {
                print("here")
            }
            
            
        } onError: { (errorMessage) in
            print("error")
        }


    }
    
    
    
}
