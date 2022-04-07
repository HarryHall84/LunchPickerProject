//
//  PickRestauraunts.swift
//  LunchPickerProject
//
//  Created by Harrison Hall on 1/10/22.
//

import Foundation
import UIKit
class PickRestauraunts: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var butOut: UIButton!
    var resturantArray : [Resturant] = []
    var resturantsSelected : [Resturant] = []
    var selectedItems = 0
    var checking = 0
    let viewImageSegueIdentifier = "viewImageSegueIdentifier"
    @IBOutlet weak var collectionViewOutlet: UICollectionView!
    
    override func viewDidLoad() {
                super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.hidesBackButton = true
        butOut.titleLabel?.font = UIFont(name: "Arial", size: 30)
        self.collectionViewOutlet.backgroundColor = UIColor(named: "orange")
        let tacoBell = Resturant(adresss: "420 W Virginia St", phoneN: "815-459-3377", restName: "Taco Bell", distance: 1.1, resturantLogo: "tacoBill", restWebsite: "https://www.tacobell.com/")
        let mcdonalds = Resturant(adresss: "551 Crystal Point Rd", phoneN: "815-455-6630", restName: "Mcdonalds", distance: 1.9, resturantLogo: "macDon", restWebsite: "https://www.mcdonalds.com/us/en-us.html")
        let burgerKing = Resturant(adresss: "250 W Virginia St", phoneN: "815-459-2976", restName: "Burger King", distance: 1.2, resturantLogo: "borgerKing", restWebsite: "https://www.bk.com/")
        let culvers = Resturant(adresss: "400 Pingree Rd", phoneN: "815-356-9090", restName: "Culvers", distance: 2.7, resturantLogo: "culvers", restWebsite: "https://www.culvers.com/")
        let popeys = Resturant(adresss: "340 W. Virginia St.", phoneN: "779-220-4934", restName: "Popey's", distance: 0.9, resturantLogo: "papi2", restWebsite: "https://www.popeyes.com/")
        let chickFille = Resturant(adresss: "4812 Northwest Hwy", phoneN: "815-444-8611", restName: "chick-fill-a", distance: 2.9, resturantLogo:"chicken", restWebsite: "https://www.chick-fil-a.com/")
        let subway = Resturant(adresss: "6166 Northwest Hwy", phoneN: "815-455-3535", restName: "Subway", distance: 1.6, resturantLogo: "subbers", restWebsite: "https://order.subway.com/")
        let jimmyjohns = Resturant(adresss: "5657 Northwest Hwy", phoneN: "815-455-2555", restName: "Jimmy Johns", distance: 2.0, resturantLogo: "jimmyJohns", restWebsite: "https://www.jimmyjohns.com/")
        let tommys = Resturant(adresss: "363 W Virginia St", phoneN: "815-455-4966", restName: "Tommy's", distance: 0.9, resturantLogo: "tommys", restWebsite: "https://tommysredhots.com/")
        let kanes = Resturant(adresss: "5417 Northwest Hwy", phoneN: "815-356-9264", restName: "Raising Cane's", distance: 2.3, resturantLogo: "canes", restWebsite: "https://www.raisingcanes.com/")
        let arbys = Resturant(adresss: "6000 Northwest Hwy", phoneN: "815-455-2346", restName: "Arby's", distance: 1.8, resturantLogo: "arbys", restWebsite: "https://www.arbys.com/")
        let fiveGuys = Resturant(adresss: "6000 Northwest Hwy", phoneN: "815-479-0430", restName: "Five Guys", distance: 1.9, resturantLogo: "five", restWebsite: "https://www.fiveguys.com/")
        let panda = Resturant(adresss: "5260 US-14", phoneN: "815-459-0998", restName: "Panda Express", distance: 2.5, resturantLogo: "panda", restWebsite: "https://www.pandaexpress.com/")
        let panera = Resturant(adresss: "6000 Northwest Hwy #56A", phoneN: "815-444-8875", restName:"Panera Bread", distance: 1.8, resturantLogo: "panera", restWebsite: "https://www.panerabread.com/en-us/home.html")
        let mcalisters = Resturant(adresss: "5500 Northwest Hwy Route 14", phoneN: "815-893-6298", restName: "Mcalister's", distance: 2.4, resturantLogo: "mcalister", restWebsite: "https://www.mcalistersdeli.com/")
        let kfc = Resturant(adresss: "6280 Northwest Hwy", phoneN: "815-459-1330", restName: "KFC", distance: 1.4, resturantLogo: "kfc", restWebsite: "https://www.kfc.com/")
        let wendys = Resturant(adresss: "6116 Northwest Hwy", phoneN: "815-455-5222", restName: "Wendy's", distance: 1.9, resturantLogo: "wendys", restWebsite: "https://www.wendys.com/")
        let noodleCompany = Resturant(adresss: "4912 Northwest Hwy", phoneN: "815-459-4400", restName:"Noodle and Company", distance: 2.8, resturantLogo: "noodles", restWebsite: "https://www.noodles.com/")
        let honeyBakedHam = Resturant(adresss: "5186 Northwest Hwy Ste 139", phoneN: "815-477-4426", restName: "Honey Baked Ham", distance: 2.6, resturantLogo: "honey", restWebsite: "https://www.honeybaked.com/home")
        resturantArray.append(culvers)
        resturantArray.append(tacoBell)
        resturantArray.append(mcdonalds)
        resturantArray.append(burgerKing)
        resturantArray.append(popeys)
        resturantArray.append(chickFille)
        resturantArray.append(subway)
        resturantArray.append(jimmyjohns)
        resturantArray.append(tommys)
        resturantArray.append(fiveGuys)
        resturantArray.append(panda)
        resturantArray.append(panera)
        resturantArray.append(mcalisters)
        resturantArray.append(kfc)
        resturantArray.append(wendys)
        resturantArray.append(noodleCompany)
        resturantArray.append(honeyBakedHam)
        resturantArray.append(arbys)
        resturantArray.append(kanes)
        
        collectionViewOutlet.delegate = self
        collectionViewOutlet.dataSource = self
        
        collectionViewOutlet.allowsMultipleSelection = true
        // Do any additional setup after loading the view.
    }
 
    
    @IBAction func unwind(_ seg:UIStoryboardSegue){
        print("hi")
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
                if(nameChecky == "Taco Bell"){
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
                else if(nameChecky == "Five Guys"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Panda Express"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Panera Bread"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Mcalister's"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "KFC"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Wendy's"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Noodle and Company"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else{
                    resturantsSelected.remove(at: i)
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
            let alert = UIAlertController(title: "Error", message: "Select at least 2 restaurants", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
            
        }
    }
}

