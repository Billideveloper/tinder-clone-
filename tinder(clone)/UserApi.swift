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
    
    func signUpuser(withUserinfo username: String, useremail: String, userpassword: String, profileimage: UIImage?, onSuccess: @escaping() -> Void, onError: @escaping(_ errorMessage: String) -> Void){
        
        guard let imageselected = profileimage else{
            return
        }
        guard let imagedata = imageselected.jpegData(compressionQuality: 0.5) else {
            return
        }

        Auth.auth().createUser(withEmail: useremail, password: userpassword) { (result, error) in
            
            if error != nil{
                print(error?.localizedDescription as Any)
            }
            if let authdata = result{
                print(authdata.user.email as Any)
                
                var dict: Dictionary<String,Any> = [
                    "uid" : authdata.user.uid,
                    "email": authdata.user.email as Any,
                    "userName": username as Any,
                    "photoUrl": "",
                    "status":""
                ]
                
                let storageref = Storage.storage().reference(forURL: "gs://tinder-b3b44.appspot.com")
                let profilephotosref = storageref.child("profiles").child(authdata.user.uid)
                let metadata = StorageMetadata()
                metadata.contentType = "image/jpg"
                
                profilephotosref.putData(imagedata, metadata: metadata) { (data, error) in
                    
                    if error != nil{
                        print(error?.localizedDescription as Any)
                        return
                    }
                    
                    profilephotosref.downloadURL { (url, error) in
                        if error != nil{
                            print(error?.localizedDescription as Any)
                            return
                        }
                        
                        if let imageUrl = url?.absoluteString{
                            dict["photoUrl"] = imageUrl
                            
                            
                            
                            Database.database().reference().child("Users").child(authdata.user.uid).updateChildValues(dict) { (error, refrence) in
                                
                                if error != nil{
                                    print(error?.localizedDescription as Any)
                                }
                                
                            }
                        }
                    }
                    
                    
                    
                }
                
            
            }
            
            
        }
    }
    
    
    
    
}
