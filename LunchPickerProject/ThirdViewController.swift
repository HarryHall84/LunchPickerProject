//
//  ThirdViewController.swift
//  LunchPickerProject
//
//  Created by mateoacosta on 1/19/22.
//

import UIKit

class ThirdViewController: UIViewController {
    var selectedResturants2 : [Resturant] = []
    var finalResturant : Resturant
    @IBOutlet weak var resturantNamy: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func randomizeResturants(){
        var randdoNum = selectedResturants2.count
        let randomInt = Int.random(in: 0..<randdoNum)
        finalResturant  = selectedResturants2[randomInt]
    }
    
    
    
    @IBAction func spinWheel(_ sender: UITapGestureRecognizer) {
        print("count: \(selectedResturants2.count)")
        randomizeResturants()
        }
    

}
