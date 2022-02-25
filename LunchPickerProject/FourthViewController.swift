//
//  FourthViewController.swift
//  LunchPickerProject
//
//  Created by mateoacosta on 1/19/22.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var adressOut: UILabel!
    @IBOutlet weak var phoneNumberOut: UILabel!
    @IBOutlet weak var distanceOut: UILabel!
    @IBOutlet weak var titleResturant: UILabel!
    @IBOutlet weak var imageStuffOutlet: UIImageView!
    var finalSelectedResturant : Resturant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleResturant.text = "\(finalSelectedResturant.restName)"
        imageStuffOutlet.image = finalSelectedResturant.resturantLogo
        adressOut.text = "Adress: \(finalSelectedResturant.adresss)"
        phoneNumberOut.text = "Phone #: \(finalSelectedResturant.phoneN)"
        distanceOut.text = "Distance: \(finalSelectedResturant.distance)"

        // Do any additional setup after loading the view.
    }
    

}
