//
//  ChatViewController.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 27/11/20.
//

import UIKit

class ChatViewController: UIViewController {
    
    var userImage: UIImage!
    var userName: String!
    
    @IBOutlet weak var tableview: UITableView!
    
    
    @IBOutlet weak var mediaBtn: UIButton!
    
    @IBOutlet weak var audioBtn: UIButton!
    
    @IBOutlet weak var inputText: UITextView!
    
    @IBOutlet weak var sendBtn: UIButton!
    
    var plaveholderLabel = UILabel()
    
    var profileImageView: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 36, height: 36))
    var topLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavBar()
        setUpInupContainer()
        setTableView()
        // Do any additional setup after loading the view.
    }
    
    func setTableView(){
        
        
        tableview.tableFooterView = UIView()
        
        
    }
    
    
    func setUpInupContainer(){
        
        inputText.delegate = self
       
        mediaBtn.tintColor = .gray
        audioBtn.tintColor = .gray
        
        let placeholderX: CGFloat = self.view.frame.size.width / 75
        let placeholdery: CGFloat = 0
        let placeholderWidth: CGFloat = inputText.bounds.width - placeholderX
        let placeholderHeight: CGFloat = inputText.bounds.height
        
        let placeholderFontSize = self.view.frame.size.width / 25
        
        plaveholderLabel.frame = CGRect(x: placeholderX, y: placeholdery, width: placeholderWidth, height: placeholderHeight)
        plaveholderLabel.text = "Message..."
        plaveholderLabel.font = UIFont.systemFont(ofSize: placeholderFontSize)
        plaveholderLabel.textColor = .lightGray
        
        inputText.addSubview(plaveholderLabel)
        
    }
    
    
    func setUpNavBar(){
        navigationItem.largeTitleDisplayMode = .never
        let containView = UIView(frame: CGRect(x: 0, y: 0, width: 36, height: 36))
        profileImageView.image = userImage
        profileImageView.layer.cornerRadius = 18
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.clipsToBounds = true
        containView.addSubview(profileImageView)
        
        let rightButton = UIBarButtonItem(customView: containView)
        self.navigationItem.rightBarButtonItem = rightButton
        
        topLabel.textAlignment = .center
        topLabel.numberOfLines = 0
        
        let attributedString = NSMutableAttributedString(string: userName + "\n", attributes: [.font : UIFont.systemFont(ofSize: 16), .foregroundColor : UIColor.black])
        
        attributedString.append(NSAttributedString(string: "Active", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12), .foregroundColor : UIColor.green]))
        
        topLabel.attributedText = attributedString
        
        self.navigationItem.titleView = topLabel
    }
    
    
    @IBAction func mediaBtnClicked(_ sender: Any) {
        
    }
    
    @IBAction func audioBtnClicked(_ sender: Any) {
        
    }
    
    
    
    @IBAction func sendMessage(_ sender: Any) {
        
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.tabBarController?.tabBar.isHidden = false
    }
    
 

}

extension ChatViewController: UITextViewDelegate{
    
    func textViewDidChange(_ textView: UITextView) {
        let space = CharacterSet.whitespacesAndNewlines
        if !textView.text.trimmingCharacters(in: space).isEmpty{
            let text = textView.text.trimmingCharacters(in: space)
            sendBtn.isEnabled = true
            plaveholderLabel.isHidden = true
            sendBtn.tintColor = .black
        }else{
            
            sendBtn.isEnabled = false
            plaveholderLabel.isHidden = false
            sendBtn.tintColor = .lightGray
            
        }
    }
    
}
