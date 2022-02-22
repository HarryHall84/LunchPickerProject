//
//  CustomCellClass.swift
//  LunchPickerProject
//
//  Created by Harrison Hall on 1/13/22.
//

import Foundation
import UIKit
class CustomCellClass:UICollectionViewCell{
    @IBOutlet weak var imageViewOutlet: UIView!
    @IBOutlet weak var imageView: UIImageView!
    override var isHighlighted : Bool {
        didSet{
            imageViewOutlet.isHidden = !isHighlighted
        }
    }
    override var isSelected: Bool {
        didSet{
        imageViewOutlet.isHidden = !isSelected
        }
    }
    
    func displayContent(image: UIImage){
        imageView.image = image
    }
}

 
