//
//  signupImagepicker.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 25/11/20.
//

import Foundation
import UIKit
extension signUpVc: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let editedimageselected = info[UIImagePickerController.InfoKey.editedImage] as? UIImage{
            image = editedimageselected
            imageView.image = editedimageselected
        }
        
        if let originalimageselected = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            image = originalimageselected
            imageView.image = originalimageselected
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    
}
