//
//  ThirdViewController.swift
//  LunchPickerProject
//
//  Created by mateoacosta on 1/19/22.
//

import UIKit

class ThirdViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var selectedResturants2 : [Resturant] = []
    var finalResturant : Resturant!
    @IBOutlet weak var pick: UIPickerView!
    @IBOutlet weak var resturantNamy: UILabel!
    var myT = Timer()
    var rand = Int.random(in: 0...10)
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
        pick.delegate = self
        pick.dataSource = self
        
        pick.reloadAllComponents()
       // print(myArr)
            myT = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(ThirdViewController.movePicker), userInfo: nil, repeats: true)
        print("Number Generated: \(rand)")


        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - move picker

    @objc func movePicker()  {


        let position = Int(arc4random_uniform(89) + 10)



        pick.selectRow(position, inComponent: 0, animated: true)
        pick.showsSelectionIndicator = true
        if position == rand {

            myT.invalidate()

            let alert = UIAlertController(title: "You Won!!", message: "Congratulations!!!", preferredStyle: .alert)
            let buttonOK = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)

            alert.addAction(buttonOK)

            present(alert, animated: true, completion: nil)



        }

    }

    
    //MARK: - picker
   func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1

   }

   func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return selectedResturants2.count
       
   }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(selectedResturants2[row].restName)"
    }
    
    
    func randomizeResturants(){
        var randdoNum = selectedResturants2.count
        let randomInt = Int.random(in: 0..<randdoNum)
        finalResturant  = selectedResturants2[randomInt]
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nvc = segue.destination as? FourthViewController
        {
            nvc.finalSelectedResturant = finalResturant
        }
    }
    
}
