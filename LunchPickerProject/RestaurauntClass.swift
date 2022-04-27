//
//  RestaurauntClass.swift
//  LunchPickerProject
//
//  Created by Harrison Hall on 1/10/22.
//

import Foundation
import UIKit

class Resturant {
    var adresss : String
    var phoneN : String
    var restName : String
    var distance : Double
    var resturantLogo : UIImage
    var restWebsite : String
    var googleLink : String
    
    public init(adresss : String, phoneN : String, restName : String, distance : Double, resturantLogo : String, restWebsite: String, googleLink:String)
    {
        self.adresss = adresss
        self.phoneN = phoneN
        self.restName = restName
        self.distance = distance
        self.resturantLogo = UIImage(named: resturantLogo)!
        self.restWebsite = restWebsite
        self.googleLink = googleLink
    }
    
    
    
}
