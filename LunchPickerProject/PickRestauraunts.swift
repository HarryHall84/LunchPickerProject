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
        var tacoBell = Resturant(adresss: <#T##String#>, phoneN: <#T##String#>, restName: <#T##String#>, distance: <#T##Int#>, resturantLogo: <#T##String#>)
        var mcdonalds = Resturant(adresss: <#T##String#>, phoneN: <#T##String#>, restName: <#T##String#>, distance: <#T##Int#>, resturantLogo: <#T##String#>)
        var freddys = Resturant(adresss: <#T##String#>, phoneN: <#T##String#>, restName: <#T##String#>, distance: <#T##Int#>, resturantLogo: <#T##String#>)
        var burgerKing = Resturant(adresss: "", phoneN: "", restName: "Burger King", distance: 22, resturantLogo: burgerKing.png)
        var culvers = Resturant(adresss: "", phoneN: "", restName: "Culvers", distance: 10, resturantLogo: "culvers.png")
        resturantArray.append(culvers)
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // return resturantArray.count
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)
        // Put images here
        let image: UIImage = UIImage(named:"culvers.png")!
        firstImageView.image = image
        cell.contentView.addSubview(firstImageView)
        return cell 
        
    }
    
}
