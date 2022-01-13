//
//  ViewController.swift
//  LunchPickerProject
//
//  Created by Harrison Hall on 1/10/22.
//

import UIKit
// Title screen 
class ViewController: UIViewController {
    @IBOutlet weak var titleButtonSegue: UIButton!
    // Initial Program
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //mateo is here
    }
    @IBAction func toCollectionViewBut(_ sender: Any) {
        performSegue(withIdentifier: "segueToCollectionView", sender: nil)
    }
    
}

