//
//  signVc+UI.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import Foundation
import UIKit

extension signInVC{
    
    func signInuser(onSuccess: @escaping() -> Void, onFailure: @escaping(_ Error: String) -> Void){
        
        Api.User.signInuser(useremail: self.email.text!, password: self.password.text!) {
            onSuccess()
            
        } onFailure: { (error) in
            
            onFailure(error)
        }




    }
    
    func labeltext(){
        
        
        let title = "Don't know Password "
        
        let subtitle = "Forgot Password"
        
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor(white: 0, alpha: 0.60)
                                                                                   
        ])
        
        let attributedTex = NSMutableAttributedString(string: subtitle, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor.black
                                                               
                                                                        
        ])
        
        attributedText.append(attributedTex)
        
        titleLabel.attributedText = attributedText
        
        
        
    }
    
    
    
    
    
}
