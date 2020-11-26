//
//  User.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 26/11/20.
//

import Foundation

class User{
    
    var uid: String
    var name: String
    var email:String
    var profileurl: String
    var status: String
    
    init(uid: String, userName: String, userEmail: String, profileUrl: String, userStatus: String) {
        
        self.uid = uid
        self.name = userName
        self.email = userEmail
        self.profileurl = profileUrl
        self.status = userStatus
    }
    
    
    static func transformUser(dict: [String:Any]) -> User?{
        guard let email = dict[User_Email] as? String,
              let name = dict[User_Name] as? String,
              let profileUrl = dict[User_Profile_Url] as? String,
              let status = dict[User_Status] as? String,
              let uid = dict[User_Uid] as? String
              else {
            return nil
        }
        
        let user = User(uid: uid, userName: name, userEmail: email, profileUrl: profileUrl, userStatus: status)
        
        return user
    }
}
