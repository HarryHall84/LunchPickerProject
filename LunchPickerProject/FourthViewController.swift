//
//  FourthViewController.swift
//  LunchPickerProject
//
//  Created by mateoacosta on 1/19/22.
//

import UIKit
import SwiftUI

class FourthViewController: UIViewController {
    @IBOutlet weak var labelOutlet: UILabel!
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
        doneBut.layer.cornerRadius = 25
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.hidesBackButton = true
        titleResturant.text = "\(finalSelectedResturant.restName)"
        imageStuffOutlet.image = finalSelectedResturant.resturantLogo
        adressOut.text = "Adress: \(finalSelectedResturant.adresss)"
        phoneNumberOut.text = "Phone #: \(finalSelectedResturant.phoneN)"
        websiteLink.text = "Go to Website"
        websiteLink.textColor = UIColor.blue
        // Do any additional setup after loading the view.
    }
    @IBAction func show(){
        if let url = URL(string: finalSelectedResturant.restWebsite) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func addresses(){
        if let url = URL(string: finalSelectedResturant.googleLink) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func calls(){
        //8155750914
        if let url = URL(string: "tel://\(finalSelectedResturant.phoneN)"){
            UIApplication.shared.openURL(url)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        performSegue(withIdentifier: "unWind", sender: self)
    }
    

}
