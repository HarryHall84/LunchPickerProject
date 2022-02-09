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
    var distance : Int
    var resturantLogo : UIImage
    var checkSwitch : Bool
    
    public init(adresss : String, phoneN : String, restName : String, distance : Int, resturantLogo : String, checkSwitch: Bool)
    {
        self.adresss = adresss
        self.phoneN = phoneN
        self.restName = restName
        self.distance = distance
        self.resturantLogo = UIImage(named: resturantLogo)!
        self.checkSwitch = false 
    }
    
    
    
}
