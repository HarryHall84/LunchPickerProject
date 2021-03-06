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
    var rand = Int.random(in: 1...PickRestauraunts.selectedItems)
    var countNum = 0
    var isSelected = false
    var position = 0
    var timeInterval = 0.05
    var newTimer = false
    var countSecs = 0.0
    var amountInWheel = PickRestauraunts.selectedItems
    var spot = 1
      
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Rand is at: \(rand)")
        
        
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.hidesBackButton = true
        pick.delegate = self
        pick.dataSource = self
        
        
      
        pick.reloadAllComponents()
        
        print("Number Generated: \(rand)")
        var i = 0
        // Array 2-5, i = 4, Array 6-9, i = 3
         while i < 14 {
        for i in selectedResturants2 {
            selectedResturants2.append(i)
        }
            i += 1
        }
        print("Stuff created: \(selectedResturants2.count)")
        // Do any additional setup after loading the view.
        amountInWheel = selectedResturants2.count
    }
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        myT = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(ThirdViewController.movePicker), userInfo: nil, repeats: false)
    }
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        myT = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(ThirdViewController.movePicker), userInfo: nil, repeats: false)
    }
    
    func endSpinner(){
        print("end spinner fired")
        countNum += 1
        pick.selectRow(position, inComponent: 0, animated: true)
        // position = rand
        finalResturant = selectedResturants2[rand]
        print("countNum is at: \(countNum)")
        // butOut2.isHidden = false
        if countNum == 1 {
            
        myT.invalidate()

            let alert = UIAlertController(title: "Resturaunt Selected", message: "It selected: \(selectedResturants2[rand].restName)", preferredStyle: .alert)
            let buttonOK = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (action) in
                self.performSegue(withIdentifier: "screen3ToScreen4", sender: nil)
            }


        alert.addAction(buttonOK)

        present(alert, animated: true, completion: nil)

        }
    }
    
    
    //MARK: - move picker

    @objc func movePicker()  {
        while newTimer == false {
            myT = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(ThirdViewController.movePicker), userInfo: nil, repeats: true)
            newTimer = true
        }
        if position == 150 {
            myT.invalidate()
            timeInterval = 0.1
            myT = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(ThirdViewController.movePicker), userInfo: nil, repeats: true)
        }
        if position == 180 {
            myT.invalidate()
            timeInterval = 0.2
            myT = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(ThirdViewController.movePicker), userInfo: nil, repeats: true)
        }
        if position == 190 {
            myT.invalidate()
            timeInterval = 0.4
            myT = Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(ThirdViewController.movePicker), userInfo: nil, repeats: true)
        }
        
            if position >= 190 && spot == rand {
                myT.invalidate()
                position += 1
                isSelected = true
                endSpinner()
                return 
            }
    
        
        
        
        if position == selectedResturants2.count - 1 && isSelected == false {
            position = 0
        } else if isSelected == false {
            position += 1
        }
        countSecs += timeInterval
        print("countSecs at: \(countSecs)")
        // let position = Int(arc4random_uniform(UInt32(intCount)) + 0)
        print(position)
        print(spot)
        spot = spot + 1
        if spot > PickRestauraunts.selectedItems {
            spot = 1
        }
        
        
        pick.selectRow(position, inComponent: 0, animated: true)
         

    }

    
    //MARK: - picker
   func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1

   }

   func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return selectedResturants2.count
       
   }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerView.subviews[1].backgroundColor = UIColor(red: 255/100, green: 50/100, blue: 255/100, alpha: 25/255)
        return "\(selectedResturants2[row].restName)"
    }
    
    
    func randomizeResturants(){
        let randdoNum = selectedResturants2.count
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
