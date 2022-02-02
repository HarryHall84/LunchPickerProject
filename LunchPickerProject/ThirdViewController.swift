//
//  ThirdViewController.swift
//  LunchPickerProject
//
//  Created by mateoacosta on 1/19/22.
//

import UIKit

class ThirdViewController: UIViewController {
    var selectedResturants2 : [Resturant] = []
    @IBOutlet weak var resturantNamy: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func spinWheel(_ sender: UITapGestureRecognizer) {
        print(selectedResturants2[0])
        print("yes sir")
    }
    

}
