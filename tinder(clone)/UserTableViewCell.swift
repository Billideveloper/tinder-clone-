//
//  UserTableViewCell.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 26/11/20.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userStatus: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var chatIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cardUI()
    }
    
    func loadData(_ user: User){
        self.userName.text = user.name
        self.userStatus.text = user.status
        self.profileImage.loadImage(user.profileurl)
        
    }
    
    func cardUI(){
        
 
        cardView.layer.cornerRadius = 10
        cardView.layer.borderColor = UIColor.lightGray.cgColor
        cardView.layer.borderWidth = 0.5
        cardView.backgroundColor = .white
        cardView.layer.shadowColor = UIColor.systemPink.cgColor
        cardView.layer.shadowOpacity = 0.5
        cardView.layer.shadowOffset = .zero
        cardView.layer.shadowRadius = 1
 
//        cardView.layer.shadowPath = UIBezierPath(rect: cardView.bounds).cgPath
        cardView.layer.shouldRasterize = true
//        cardView.layer.rasterizationScale = UIScreen.main.scale
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
