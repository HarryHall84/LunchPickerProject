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
    
    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
                super.viewDidLoad()
        var tacoBell = Resturant(adresss: "420 W Virginia St", phoneN: "815-459-3377", restName: "Taco Bell", distance: 10, resturantLogo: "tacoBell")
        var mcdonalds = Resturant(adresss: "551 Crystal Point Rd", phoneN: "815-455-6630", restName: "Mcdonalds", distance: 10, resturantLogo: "clowning")
        var burgerKing = Resturant(adresss: "250 W Virginia St, Crystal Lake, IL 60014", phoneN: "815-459-2976", restName: "Burger King", distance: 22, resturantLogo: "burgerKing")
        var culvers = Resturant(adresss: "400 Pingree Rd Crystal Lake, IL 60014", phoneN: "815-356-9090", restName: "Culvers", distance: 10, resturantLogo: "culvers.png")
        resturantArray.append(culvers)
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    var testImage = UIImage(named: "culvers.png")
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return resturantArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        // Put images here
        cell.imageView.image = testImage
        return cell 
        
    }
    
}
