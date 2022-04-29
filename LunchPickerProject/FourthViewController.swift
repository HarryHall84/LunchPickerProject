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
        if(finalSelectedResturant.restName == "Taco Bell"){
            labelOutlet.text = "I love the baja blast here"
        }
        else if(finalSelectedResturant.restName == "Mcdonalds"){
            labelOutlet.text = "Where is the mcrib"
        }
        else if(finalSelectedResturant.restName == "Burger King"){
            labelOutlet.text = "will you be my burger king"
        }
        else if(finalSelectedResturant.restName == "Culvers"){
            labelOutlet.text = "RIP buffulo chicken tenders"
        }
        else if(finalSelectedResturant.restName == "Popey's"){
            labelOutlet.text = "mmmmmm chicken sandwich"
        }
        else if(finalSelectedResturant.restName == "chick-fill-a"){
            labelOutlet.text = "#1 with the lemonade"
        }
        else if(finalSelectedResturant.restName == "Subway"){
            labelOutlet.text = "Eat Fresh!"
        }
        else if(finalSelectedResturant.restName == "Jimmy Johns"){
            labelOutlet.text = "I love jimmy"
        }
        else if(finalSelectedResturant.restName == "Tommy's"){
            labelOutlet.text = "Great hot dogs"
        }
        else if(finalSelectedResturant.restName == "Five Guys"){
            labelOutlet.text = "Five Guys made this burger?"
        }
        else if(finalSelectedResturant.restName == "Panda Express"){
            labelOutlet.text = "mmmm Orange chicken"
        }
        else if(finalSelectedResturant.restName == "Panera Bread"){
            labelOutlet.text = "Panera Panera Panera"
        }
        else if(finalSelectedResturant.restName == "Mcalister's"){
            labelOutlet.text = "I love alister"
        }
        else if(finalSelectedResturant.restName == "KFC"){
            labelOutlet.text = "Biggest chicken ever"
        }
        else if(finalSelectedResturant.restName == "Wendy's"){
            labelOutlet.text = "The 4 for 4"
        }
        else if(finalSelectedResturant.restName == "Noodle and Company"){
            labelOutlet.text = "nooooooooodles"
        }
        else if(finalSelectedResturant.restName == "Honey Baked Ham"){
            labelOutlet.text = "Honey + Baked Ham"
        }
        else if(finalSelectedResturant.restName == "Chipotle"){
            labelOutlet.text = "big burrrito"
        }
        else if(finalSelectedResturant.restName == "Breaking Bread"){
            labelOutlet.text = "bbbbbbbbread"
        }
        else if(finalSelectedResturant.restName == "Freddy's"){
            labelOutlet.text = "good chilly cheese fries"
        }
        else if(finalSelectedResturant.restName == "Potbelly Sandwich Shop"){
            labelOutlet.text = "potbeeellllly"
        }
        else if(finalSelectedResturant.restName == "Portillo's Hot Dog"){
            labelOutlet.text = "hot hot dogs"
        }
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
