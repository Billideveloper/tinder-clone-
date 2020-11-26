//
//  UserTableViewCell.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 26/11/20.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userStatus: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var chatIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadData(_ user: User){
        self.userName.text = user.name
        self.userStatus.text = user.status
        self.profileImage.loadImage(user.profileurl)
        
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
