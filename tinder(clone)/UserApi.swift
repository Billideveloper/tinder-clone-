//
//  UserApi.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 25/11/20.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage
import Firebase

class UserApi{

func signUpuser(withUserinfo username: String, useremail: String, userpassword: String, profileimage: UIImage?,  onSuccess: @escaping() -> Void, onFailure: @escaping(_ Error: String) -> Void){
    
    guard let imageselected = profileimage else{
        return
    }
    
    guard let imagedata = imageselected.jpegData(compressionQuality: 0.3) else {
        return
    }
    
    Auth.auth().createUser(withEmail: useremail, password: userpassword) { (result, error) in
        
        if error != nil{
            print(error?.localizedDescription as Any)
        }
        if let authdata = result{
            let dict: Dictionary<String,Any> = [
                User_Uid : authdata.user.uid,
                User_Email: authdata.user.email as Any,
                User_Name: username as Any,
                User_Profile_Url: "",
                User_Status:""
            ]
            
            let profilephotosref = Ref().storageSpecificProfile(uid: authdata.user.uid)
            
            
            let metadata = StorageMetadata()
            metadata.contentType = "image/jpg"
            
            StorageServices.savephoto(username: username, uid: authdata.user.uid, data: imagedata, metadata: metadata, storageRef: profilephotosref, dict: dict) {
                
                onSuccess()
                
            } onFailure: { (error) in
                
                print(Error_Empty_TryAgain)
                onFailure(error)
                
            }
            
            
            
        }
        
        
    }
}
    
    
    
    func signInuser(useremail: String, password: String, onSuccess: @escaping() -> Void, onFailure: @escaping(_ Error: String) -> Void){
        
        Auth.auth().signIn(withEmail: useremail, password: password) { (results, error) in
            
            if error != nil{
                print(Error_Empty_TryAgain)
                onFailure(error!.localizedDescription)
            }
            
            onSuccess()
            print(results?.user.uid as Any)
            
            
            
            
        }
        
    }
    
}
