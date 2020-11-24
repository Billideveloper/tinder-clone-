//
//  viewController+UI.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import Foundation
import UIKit

extension ViewController{
    
    
    func titleLabel(){
        let title = "Create New Account"
        
        let subtitle = "\n\nyou can create your account with Google , Facebook or with your Email just select any one of them and continue"
        
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24), NSAttributedString.Key.foregroundColor: UIColor.black
                                                                                   
        ])
        
        let attributedTex = NSMutableAttributedString(string: subtitle, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor(white: 0, alpha: 0.60)
                                                                                   
        ])
        
        attributedText.append(attributedTex)
        
        title_Label.attributedText = attributedText
    }
    
    func titleLabel2(){
        let title = "you accept all our terms and conditions read "
        
        let subtitle = "Terms and Conditions"
        
        
        let attributedText = NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor(white: 0, alpha: 0.65)
                                                                                   
        ])
        
        let attributedTex = NSMutableAttributedString(string: subtitle, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12), NSAttributedString.Key.foregroundColor: UIColor(white: 0, alpha: 0.75)
                                                                                   
        ])
        
        attributedText.append(attributedTex)
        
        termslabel.attributedText = attributedText
    }
    
    func fbsignIntbn(){
        fbBtn.tintColor = .white
        fbBtn.setTitle("Sign In with Facebook", for: UIControl.State.normal)
        fbBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        fbBtn.backgroundColor = UIColor(red: 58/255, green: 85/255, blue: 159/225, alpha: 1)
        fbBtn.clipsToBounds = true
        
        fbBtn.setImage(UIImage(named: "fb"), for: UIControl.State.normal)
        fbBtn.imageView?.contentMode = .scaleAspectFit
        fbBtn.imageEdgeInsets = UIEdgeInsets(top: 12, left: -15, bottom: 12, right: 0)
    }
    
    func googlesignIntbn(){
        googleBtn.tintColor = .white
        googleBtn.setTitle("Sign In with Google", for: UIControl.State.normal)
        googleBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        googleBtn.backgroundColor = UIColor(red: 223/255, green: 74/255, blue: 50/225, alpha: 1)
        googleBtn.clipsToBounds = true
        
        googleBtn.setImage(UIImage(named: "google"), for: UIControl.State.normal)
        googleBtn.imageView?.contentMode = .scaleAspectFit
        googleBtn.imageEdgeInsets = UIEdgeInsets(top: 12, left: -35, bottom: 12, right: 0)
    }

    func emailsignIntbn(){
        
        emailBtn.tintColor = .white
        emailBtn.setTitle("Sign In with Email", for: UIControl.State.normal)
        emailBtn.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        emailBtn.backgroundColor = UIColor.black
        emailBtn.clipsToBounds = true
        
        emailBtn.setImage(UIImage(named: "email"), for: UIControl.State.normal)
        emailBtn.imageView?.contentMode = .scaleAspectFit
        emailBtn.imageEdgeInsets = UIEdgeInsets(top: 12, left: -45, bottom: 12, right: 0)
        
    }
    
    
    
}
