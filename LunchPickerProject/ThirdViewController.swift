//
//  ThirdViewController.swift
//  LunchPickerProject
//
//  Created by mateoacosta on 1/19/22.
//

import UIKit

class ThirdViewController: UIViewController {
    var selectedResturants2 : [Resturant] = []
    var finalResturant : Resturant!
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
    
    
    @IBAction func spinBoy(_ sender: UITapGestureRecognizer) {
        print("count: \(selectedResturants2.count)")
        randomizeResturants()
        print("\(finalResturant.restName)")
        let alert = UIAlertController(title: "Wheel Spun", message: "The wheel selected: \(finalResturant.restName)", preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nvc = segue.destination as? FourthViewController
        {
            nvc.finalSelectedResturant = finalResturant
        }
    }
    
}
