//
//  storgaeServices.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 26/11/20.
//

import Foundation
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth
import Firebase

class StorageServices{

static func savephoto(username: String, uid: String, data: Data, metadata: StorageMetadata, storageRef: StorageReference, dict: Dictionary<String, Any>, onSuccess: @escaping() -> Void, onFailure: @escaping(_ Error: String) -> Void){
    
    
    storageRef.putData(data, metadata: metadata) { (data, error) in
        
        if error != nil{
            onFailure(error!.localizedDescription)
            return
        }
        
        storageRef.downloadURL { (url, error) in
            
            if error != nil{
                print(Error_Empty_TryAgain)
                return
            }
            
            if let imageUrl = url?.absoluteString{
                
                if let changerequest = Auth.auth().currentUser?.createProfileChangeRequest(){
                    changerequest.photoURL = url
                    changerequest.displayName = username
                    changerequest.commitChanges { (error) in
                        if let error = error{
                            print(error.localizedDescription)
                        }
                    }
                }
                var dictTemp = dict
                dictTemp[Profile_Image_url] = imageUrl
                
                Ref().databaseSpecificUser(uid: uid).updateChildValues(dictTemp) { (error, refrence) in
                    
                    if error != nil{
                        
                        onFailure(error?.localizedDescription ?? "Got Error try Again")
                        
                    }
                    
                    onSuccess()
                    
                    print("Sucessfully user created")
                    
                }
            }
        }
        
        
        
    }
    
    
    
}



}
