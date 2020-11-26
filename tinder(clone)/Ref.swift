//
//  Ref.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 26/11/20.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage
import Firebase

let Ref_User = "Users"
let Storage_Profile_Root = "gs://tinder-b3b44.appspot.com"
let Storage_Profile = "profiles"

let User_Cell_Identifier = "users"
let Message_Cell_Identifier = "message"


let TabBar_Identifier = "tabVc"
let SignInVc_Identifier = "welcomeVc"

let Profile_Image_url = "photoUrl"
let User_Uid = "uid"
let User_Email = "email"
let User_Name = "userName"
let User_Profile_Url = "photoUrl"
let User_Status = "status"


let Error_Empty_Username = "Please Write Name"
let Error_Empty_Email = "Please Write Email"
let Error_Empty_Password = "Please Write Password"
let Error_Empty_TryAgain = "Please try Again"



class Ref {
    
    let databaseRoot: DatabaseReference = Database.database().reference()
    
    var databaseUsers: DatabaseReference{
        return databaseRoot.child(Ref_User)
    }
    
    func databaseSpecificUser(uid: String) -> DatabaseReference{
        return databaseUsers.child(uid)
    }
    
    
    
    //storageRoot
    
    let storageRoot: StorageReference = Storage.storage().reference(forURL: Storage_Profile_Root)
    
    var storageProfile: StorageReference{
        return storageRoot.child(Storage_Profile)
    }
    
    func storageSpecificProfile(uid : String) -> StorageReference{
        
        return storageProfile.child(uid)
    }
    
    
    
}
