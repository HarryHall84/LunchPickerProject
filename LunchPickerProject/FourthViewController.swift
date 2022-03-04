//
//  FourthViewController.swift
//  LunchPickerProject
//
//  Created by mateoacosta on 1/19/22.
//

import UIKit
import SwiftUI

class FourthViewController: UIViewController {
    @IBOutlet weak var adressOut: UILabel!
    @IBOutlet weak var phoneNumberOut: UILabel!
    @IBOutlet weak var distanceOut: UILabel!
    @IBOutlet weak var titleResturant: UILabel!
    @IBOutlet weak var websiteText: UILabel!
    @IBOutlet weak var websiteLink: UILabel!
    @IBOutlet weak var imageStuffOutlet: UIImageView!
    @IBOutlet weak var doneBut: UIButton!
    var webLink = Link("Test", destination: URL(string: "https://google.com")!)
    var finalSelectedResturant : Resturant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneBut.titleLabel?.font = UIFont(name: "Arial", size: 30)
        titleResturant.text = "\(finalSelectedResturant.restName)"
        imageStuffOutlet.image = finalSelectedResturant.resturantLogo
        adressOut.text = "Adress: \(finalSelectedResturant.adresss)"
        phoneNumberOut.text = "Phone #: \(finalSelectedResturant.phoneN)"
        distanceOut.text = "Distance: \(finalSelectedResturant.distance) miles"
       // websiteText.text = "Website: \(webLink)"
        websiteText.text = "Website: TO BE ADDED SOON"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func butToFirstScreen(_ sender: Any) {
        performSegue(withIdentifier: "segueToFirstScreen", sender: nil)
        
    }
    
    

}
