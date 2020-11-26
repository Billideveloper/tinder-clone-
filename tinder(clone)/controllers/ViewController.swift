//
//  ViewController.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 24/11/20.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var title_Label: UILabel!
    
    @IBOutlet weak var googleBtn: UIButton!
    
    @IBOutlet weak var fbBtn: UIButton!
    
    @IBOutlet weak var emailBtn: UIButton!
    
    @IBOutlet weak var termslabel: UILabel!
    
    @IBOutlet var signuplabel: UITapGestureRecognizer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        termslabel.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(segueSignUp(_:)))
        termslabel.addGestureRecognizer(tap)
    }
    
    func setUpUI(){
        
        titleLabel()
        titleLabel2()
        fbsignIntbn()
        googlesignIntbn()
        emailsignIntbn()
        
    }
    

    @IBAction func segueSignUp(_ sender: Any) {
        
        self.performSegue(withIdentifier: "signUp", sender: nil)
        
    }
    
    @IBAction func googlebtn(_ sender: Any) {
        
    }
    
    
    @IBAction func emailbtn(_ sender: Any) {
        
        self.performSegue(withIdentifier: "signme", sender: nil)
    }
    

    @IBAction func fbbtn(_ sender: Any) {
    }
    
    
}

