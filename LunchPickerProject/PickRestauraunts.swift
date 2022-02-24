//
//  PickRestauraunts.swift
//  LunchPickerProject
//
//  Created by Harrison Hall on 1/10/22.
//

import Foundation
import UIKit
class PickRestauraunts: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var resturantArray : [Resturant] = []
    var resturantsSelected : [Resturant] = []
    var selectedItems = 0
    var checking = 0
    let viewImageSegueIdentifier = "viewImageSegueIdentifier"
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    override func viewDidLoad() {
                super.viewDidLoad()
        var tacoBell = Resturant(adresss: "420 W Virginia St", phoneN: "815-459-3377", restName: "Taco Bell", distance: 10, resturantLogo: "tacoBell", checkSwitch: false)
        var mcdonalds = Resturant(adresss: "551 Crystal Point Rd", phoneN: "815-455-6630", restName: "Mcdonalds", distance: 10, resturantLogo: "clowning", checkSwitch: false)
        var burgerKing = Resturant(adresss: "250 W Virginia St, Crystal Lake, IL 60014", phoneN: "815-459-2976", restName: "Burger King", distance: 22, resturantLogo: "burgerKing", checkSwitch: false)
        var culvers = Resturant(adresss: "400 Pingree Rd Crystal Lake, IL 60014", phoneN: "815-356-9090", restName: "Culvers", distance: 10, resturantLogo: "culvers.png", checkSwitch: false)
        var popeys = Resturant(adresss: "340 W. Virginia St.Crystal Lake, IL, 60014", phoneN: "779-220-4934", restName: "Popey's", distance: 10, resturantLogo: "popeyes", checkSwitch: false)
        var chickFille = Resturant(adresss: "4812 Northwest Hwy,Crystal Lake, IL 60014", phoneN: "815-444-8611", restName: "chick-fill-a", distance: 10, resturantLogo:"chick fill a", checkSwitch: false)
        var subway = Resturant(adresss: "6166 Northwest Hwy, Crystal Lake, IL 60014", phoneN: "815-455-3535", restName: "Subway", distance: 10, resturantLogo: "subway", checkSwitch: false)
        var jimmyjohns = Resturant(adresss: "5657 Northwest Hwy, Crystal Lake, IL 60014", phoneN: "815-455-2555", restName: "Jimmy Johns", distance: 10, resturantLogo: "jimmyJohns", checkSwitch: false)
        var tommys = Resturant(adresss: "363 W Virginia St, Crystal Lake, IL 60014", phoneN: "815-455-4966", restName: "Tommy's", distance: 10, resturantLogo: "tommys", checkSwitch: false)
        resturantArray.append(culvers)
        resturantArray.append(tacoBell)
        resturantArray.append(mcdonalds)
        resturantArray.append(burgerKing)
        resturantArray.append(popeys)
        resturantArray.append(chickFille)
        resturantArray.append(subway)
        resturantArray.append(jimmyjohns)
        resturantArray.append(tommys)
        
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        collectionViewOutlet.allowsMultipleSelection = true
        // Do any additional setup after loading the view.
    }
 
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // return resturantArray.count
        return resturantArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CustomCellClass
        cell.displayContent(image: resturantArray[indexPath.row].resturantLogo)
        return cell
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(checking == 1){
           performSegue(withIdentifier: viewImageSegueIdentifier, sender: indexPath)
        }
       print("yeah baby")
        var nameChecky = resturantArray[indexPath.row].restName
        var i = 0
       resturantsSelected.append(resturantArray[indexPath.row])
       
       // print(resturantsSelected[].restName)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        print(resturantsSelected)
        var nameChecky = resturantArray[indexPath.row].restName
        var i = 0
        for deSelected in resturantsSelected{
            if(nameChecky == deSelected.restName){
                if(nameChecky == "tacoBell"){
                    resturantsSelected.remove(at: i)
                    print("taco")
                  //  collectionViewOutlet.reloadData()
                    return
                }
                else if(nameChecky == "Mcdonalds"){
                    resturantsSelected.remove(at: i)
                    print("mickey")
                  //  collectionViewOutlet.reloadData()
                    return
                }
                else if(nameChecky == "Burger King"){
                    resturantsSelected.remove(at: i)
                    print("burger")
                   // collectionViewOutlet.reloadData()
                    return
                }
                else if(nameChecky == "Culvers"){
                    resturantsSelected.remove(at: i)
                    print("culver")
                   // collectionViewOutlet.reloadData()
                    return
                }
                else if(nameChecky == "Popey's"){
                        resturantsSelected.remove(at: i)
                    print("pop")
                  //  collectionViewOutlet.reloadData()
                    return
                }
                else if(nameChecky == "chick-fill-a"){
                    resturantsSelected.remove(at: i)
                    print("chick")
                   // collectionViewOutlet.reloadData()
                    return
                }
                else if(nameChecky == "Subway"){
                    resturantsSelected.remove(at: i)
                    print("sub")
                   // collectionViewOutlet.reloadData()
                    return
                }
                else if(nameChecky == "Jimmy Johns"){
                    resturantsSelected.remove(at: i)
                    print("jhons")
                    //collectionViewOutlet.reloadData()
                    return
                }
                else if(nameChecky == "Tommy's"){
                    resturantsSelected.remove(at: i)
                    print("tom")
                   // collectionViewOutlet.reloadData()
                    return
                }
               
            
    }
         i += 1
          //  collectionViewOutlet.reloadData()
    }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //variables we want to send over
        print("count: \(resturantsSelected.count)")
        if let nvc = segue.destination as? ThirdViewController
        {
            nvc.selectedResturants2 = resturantsSelected
        }
        
    }
    @IBAction func continueSelected(_ sender: UIButton) {
        if resturantsSelected.count < 2 {
            let alert = UIAlertController(title: "Error", message: "Select at least 2 restaurants", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            
        }
    }
}

