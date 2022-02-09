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
    var finalSelectedResturant : Resturant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adressOut.text = "Adress: \(finalSelectedResturant.adresss)"
        phoneNumberOut.text = "Phone #: \(finalSelectedResturant.phoneN)"
        distanceOut.text = "Distance: \(finalSelectedResturant.distance)"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
