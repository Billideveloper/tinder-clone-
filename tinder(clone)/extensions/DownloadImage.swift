//
//  DownloadImage.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 26/11/20.
//

import Foundation
import SDWebImage

extension UIImageView{
    
    func loadImage(_ urlString: String?, onSucess: ((UIImage) -> Void)? = nil){
        
        self.image = UIImage()
        guard let stringurl = urlString else { return }
        guard let url = URL(string: stringurl) else { return }
        
        self.sd_setImage(with: url) { (image, error, type, url) in
            
            if onSucess != nil, error == nil{
                
                onSucess!(image!)
                
            }
        }
        
        
    }
}
