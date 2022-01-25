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
        
        
        // Do any additional setup after loading the view.
    }
    
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // return resturantArray.count
        return resturantArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CustomnCellClass
        // Put images here
        // Test (making sure images go on cell)
            // cell.imageView.image =  UIImage(named:"culvers.png")!
            print(resturantArray.count)
        cell.imageView.image = resturantArray[indexPath.row].resturantLogo
        // firstImageView.image = image
        //cell.addSubview(firstImageView)
        return cell 
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //variables we want to send over
    }
}
