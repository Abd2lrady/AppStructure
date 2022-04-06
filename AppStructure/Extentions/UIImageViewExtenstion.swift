//
//  UIImageView+.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
import AlamofireImage

extension UIImageView {
    
    func loadImgFrom(imgURLString: String,
                     placeHolderImage: UIImage?,
                     animation: ImageTransition = .noTransition) {
        
        guard let imgURL = URL(string: imgURLString) else { return }
        
        self.af.setImage(withURL: imgURL,
                         placeholderImage: placeHolderImage,
                         imageTransition: animation)
    }
}
