//
//  CustomCellClass.swift
//  LunchPickerProject
//
//  Created by Harrison Hall on 1/13/22.
//

import Foundation
import UIKit
class CustomnCellClass:UICollectionViewCell{
    @IBOutlet weak var imageView: UIImageView!
    override var isHighlighted: Bool {
            didSet {
                if self.isHighlighted {
                    backgroundColor = UIColor.green
                }
                else
                {
                    backgroundColor = UIColor.white
                }
            }
}
}
