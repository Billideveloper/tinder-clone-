//
//  signUpVc+UI.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import Foundation
import UIKit

extension signUpVc{
    
    
    func myGetsures(){
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(selectimageGesturebtn(_:)))
        imageView.addGestureRecognizer(tap)
        
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(takeToSignIn(_:)))
        titleLabel.addGestureRecognizer(tap2)
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
    
    
    
    
    
    
}
