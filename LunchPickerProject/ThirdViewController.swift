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
    var countNum = 0
      
    override func viewDidLoad() {
        super.viewDidLoad()
        pick.delegate = self
        pick.dataSource = self
        
      
        pick.reloadAllComponents()
        myT = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(ThirdViewController.movePicker), userInfo: nil, repeats: true)
        print("Number Generated: \(rand)")
        var i = 0
        // Array 2-5, i = 4, Array 6-9, i = 3
         while i < 4 {
        for i in selectedResturants2 {
            selectedResturants2.append(i)
        }
            i += 1
        }
        print("Stuff created: \(selectedResturants2.count)")
        // Do any additional setup after loading the view.
    }
    
    func endSpinner(){
        countNum += 1
        print("countNum is at: \(countNum)")
        if countNum == 1 {
            
        myT.invalidate()

            let alert = UIAlertController(title: "Resturaunt Selected", message: "It selected: \(selectedResturants2[rand].restName)", preferredStyle: .alert)
        let buttonOK = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)


        alert.addAction(buttonOK)

        present(alert, animated: true, completion: nil)

        }
    }
    
    
    //MARK: - move picker

    @objc func movePicker()  {

        let intCount = selectedResturants2.count
        let position = Int(arc4random_uniform(UInt32(intCount)) + 0)
        print(position)
        
        
        pick.selectRow(position, inComponent: 0, animated: true)
        switch selectedResturants2.count {
        case 72: // Initial array has 9
            if position == rand || position == rand + 9 || position == rand + 18 || position == rand + 27 || position == rand + 36 || position == rand + 45 || position == rand + 54 || position == rand + 63 || position == rand + 72 {
                endSpinner()
            }
        case 64: // Initial array has 8 or 4
            if position == rand || position == rand + 8 || position == rand + 16 || position == rand + 24 || position == rand + 32 || position == rand + 40 || position == rand + 48 || position == rand + 56 || position == rand + 64 {
                endSpinner()
            }
        case 56: // Array 7
            if position == rand || position == rand + 7 || position == rand + 14 || position == rand + 21 || position == rand + 28 || position == rand + 35 || position == rand + 42 || position == rand + 49 || position == rand + 56 {
                endSpinner()
            }
        case 48: // Array 6 or 3
            if position == rand || position == rand + 6 || position == rand + 12 || position == rand + 18 || position == rand + 24 || position == rand + 30 || position == rand + 36 || position == rand + 42 || position == rand + 48 {
                endSpinner()
            }
        case 80: // Array 5
            if position == rand || position == rand + 5 || position == rand + 10 || position == rand + 15 || position == rand + 20 || position == rand + 25 || position == rand + 30 || position == rand + 35 || position == rand + 40 || position == rand + 45 || position == rand + 50 || position == rand + 55 || position == rand + 60 || position == rand + 65 || position == rand + 70 || position == rand + 75 || position == rand + 80 {
                endSpinner()
            }
        case 32:
            if position == rand || position == rand + 2 || position == rand + 4 || position == rand + 6 || position == rand + 8 || position == rand + 10 || position == rand + 12 || position == rand + 14 || position == rand + 16 || position == rand + 18 || position == rand + 20 || position == rand + 22 || position == rand + 24 || position == rand + 26 || position == rand + 28 || position == rand + 30 || position == rand + 32 {
                endSpinner()
            }
        
        default:
            break
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
