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
        self.collectionViewOutlet.backgroundColor = UIColor(named: "orange")
        let tacoBell = Resturant(adresss: "420 W Virginia St", phoneN: "815-459-3377", restName: "Taco Bell", distance: 1.1, resturantLogo: "tacoBill", restWebsite: "https://www.tacobell.com/", googleLink: "https://www.google.com/maps/place/Taco+Bell/@42.2348975,-88.3377115,16.52z/data=!4m5!3m4!1s0x880f6d457dc06281:0x7ab43f8290fe04e6!8m2!3d42.2344015!4d-88.3362043")
        let mcdonalds = Resturant(adresss: "551 Crystal Point Rd", phoneN: "815-455-6630", restName: "Mcdonalds", distance: 1.9, resturantLogo: "macDon", restWebsite: "https://www.mcdonalds.com/us/en-us.html", googleLink: "https://www.google.com/maps/place/McDonald's/@42.2247002,-88.3136738,16.61z/data=!4m12!1m6!3m5!1s0x0:0x28069388f397bb6f!2sBurger+King!8m2!3d42.2293836!4d-88.330245!3m4!1s0x0:0xcd1a8559626496ee!8m2!3d42.2254935!4d-88.3113885")
        let burgerKing = Resturant(adresss: "250 W Virginia St", phoneN: "815-459-2976", restName: "Burger King", distance: 1.2, resturantLogo: "borgerKing", restWebsite: "https://www.bk.com/", googleLink: "https://www.google.com/maps/place/Burger+King/@42.2320038,-88.3336609,15.89z/data=!4m5!3m4!1s0x0:0x28069388f397bb6f!8m2!3d42.2293836!4d-88.330245")
        let culvers = Resturant(adresss: "400 Pingree Rd", phoneN: "815-356-9090", restName: "Culvers", distance: 2.7, resturantLogo: "culvers", restWebsite: "https://www.culvers.com/", googleLink: "https://www.google.com/maps/place/Culver's/@42.2288627,-88.2981276,16.81z/data=!4m5!3m4!1s0x880f72cdca56397f:0x37fe6b3ca41ac4f!8m2!3d42.2294001!4d-88.2969033")
        let popeys = Resturant(adresss: "340 W. Virginia St.", phoneN: "779-220-4934", restName: "Popey's", distance: 0.9, resturantLogo: "papi2", restWebsite: "https://www.popeyes.com/", googleLink: "https://www.google.com/maps/place/Popeyes+Louisiana+Kitchen/@42.231475,-88.333731,17.15z/data=!4m5!3m4!1s0x880f6d9b6f5e0139:0x384e3c6ee823a00!8m2!3d42.2317693!4d-88.3333097")
        let chickFille = Resturant(adresss: "4812 Northwest Hwy", phoneN: "815-444-8611", restName: "chick-fill-a", distance: 2.9, resturantLogo:"chicken", restWebsite: "https://www.chick-fil-a.com/", googleLink: "https://www.google.com/maps/place/Chick-fil-A/@42.2269896,-88.2958051,17.39z/data=!4m5!3m4!1s0x880f72d3a4fb2d23:0xb5fe4515a30564ee!8m2!3d42.2265567!4d-88.2920127")
        let subway = Resturant(adresss: "6166 Northwest Hwy", phoneN: "815-455-3535", restName: "Subway", distance: 1.6, resturantLogo: "subbers", restWebsite: "https://order.subway.com/", googleLink: "https://www.google.com/maps/place/Subway/@42.225919,-88.3182979,15.29z/data=!4m5!3m4!1s0x0:0xd1223036cfecdcab!8m2!3d42.2273656!4d-88.3188424")
        let jimmyjohns = Resturant(adresss: "5657 Northwest Hwy", phoneN: "815-455-2555", restName: "Jimmy Johns", distance: 2.0, resturantLogo: "jimmyJohns", restWebsite: "https://www.jimmyjohns.com/", googleLink: "https://www.google.com/maps/place/Jimmy+John's/@42.2251374,-88.310442,17z/data=!4m5!3m4!1s0x880f0d4b36d58c9f:0x5a2f1aa233ae96ed!8m2!3d42.2252735!4d-88.3090846")
        let tommys = Resturant(adresss: "363 W Virginia St", phoneN: "815-455-4966", restName: "Tommy's", distance: 0.9, resturantLogo: "tommys", restWebsite: "https://tommysredhots.com/", googleLink: "https://www.google.com/maps/place/Tommy's+Red+Hots/@42.2328398,-88.3358364,17.63z/data=!4m5!3m4!1s0x880f6d4fcf115c85:0x12f1e44ccdfa4c91!8m2!3d42.2321443!4d-88.3346175")
        let kanes = Resturant(adresss: "5417 Northwest Hwy", phoneN: "815-356-9264", restName: "Raising Cane's", distance: 2.3, resturantLogo: "canes", restWebsite: "https://www.raisingcanes.com/", googleLink: "https://www.google.com/maps/place/Raising+Cane's/@42.2262808,-88.3080249,14.97z/data=!4m5!3m4!1s0x880f73bf48e5494f:0xee58a3c828133494!8m2!3d42.2257283!4d-88.3028233")
        let arbys = Resturant(adresss: "6000 Northwest Hwy", phoneN: "815-455-2346", restName: "Arby's", distance: 1.8, resturantLogo: "arbys", restWebsite: "https://www.arbys.com/", googleLink: "https://www.google.com/maps/place/Arby's/@42.2260492,-88.3142036,15.81z/data=!4m5!3m4!1s0x0:0xdcd2f55f25ef57b2!8m2!3d42.2266205!4d-88.3151994")
        let fiveGuys = Resturant(adresss: "6000 Northwest Hwy", phoneN: "815-479-0430", restName: "Five Guys", distance: 1.9, resturantLogo: "five", restWebsite: "https://www.fiveguys.com/", googleLink: "https://www.google.com/maps/place/Five+Guys/@42.2268966,-88.3131691,17.42z/data=!4m5!3m4!1s0x880f72b27e28b761:0xc36b234cfeb6d655!8m2!3d42.2265495!4d-88.3129258")
        let panda = Resturant(adresss: "5260 US-14", phoneN: "815-459-0998", restName: "Panda Express", distance: 2.5, resturantLogo: "panda", restWebsite: "https://www.pandaexpress.com/", googleLink: "https://www.google.com/maps/place/Panda+Express/@42.2268605,-88.3021331,20.86z/data=!4m5!3m4!1s0x880f72cbad6142e3:0xf2c1519c83a1a84!8m2!3d42.2268397!4d-88.3021412")
        let panera = Resturant(adresss: "6000 Northwest Hwy #56A", phoneN: "815-444-8875", restName:"Panera Bread", distance: 1.8, resturantLogo: "panera", restWebsite: "https://www.panerabread.com/en-us/home.html", googleLink: "https://www.google.com/maps/place/Panera+Bread/@42.2281223,-88.3081444,15.49z/data=!4m5!3m4!1s0x880f72b25fb0436b:0x7b8d787c4eba17b5!8m2!3d42.2265832!4d-88.3140906")
        let mcalisters = Resturant(adresss: "5500 Northwest Hwy Route 14", phoneN: "815-893-6298", restName: "Mcalister's", distance: 2.4, resturantLogo: "mcalister", restWebsite: "https://www.mcalistersdeli.com/", googleLink: "x")
        let kfc = Resturant(adresss: "6280 Northwest Hwy", phoneN: "815-459-1330", restName: "KFC", distance: 1.4, resturantLogo: "kfc", restWebsite: "https://www.kfc.com/", googleLink: "https://www.google.com/maps/place/KFC/@42.2256611,-88.321778,16.78z/data=!4m5!3m4!1s0x880f72ab79b0c22d:0x8274e74b6cf8b7cb!8m2!3d42.2265523!4d-88.3208281")
        let wendys = Resturant(adresss: "6116 Northwest Hwy", phoneN: "815-455-5222", restName: "Wendy's", distance: 1.9, resturantLogo: "wendys", restWebsite: "https://www.wendys.com/", googleLink: "https://www.google.com/maps/place/Wendy's/@42.2269424,-88.3180586,17.01z/data=!4m5!3m4!1s0x880f72b4589242e7:0x8965936624d46a05!8m2!3d42.2266155!4d-88.3169666")
        let noodleCompany = Resturant(adresss: "4912 Northwest Hwy", phoneN: "815-459-4400", restName:"Noodle and Company", distance: 2.8, resturantLogo: "noodles", restWebsite: "https://www.noodles.com/", googleLink: "https://www.google.com/maps/place/Noodles+and+Company/@42.226365,-88.2932524,18.94z/data=!4m5!3m4!1s0x880f72d25fe5587f:0xffb5f2cde9dd77b3!8m2!3d42.226573!4d-88.2931795")
        let honeyBakedHam = Resturant(adresss: "5186 Northwest Hwy Ste 139", phoneN: "815-477-4426", restName: "Honey Baked Ham", distance: 2.6, resturantLogo: "honey", restWebsite: "https://www.honeybaked.com/home", googleLink: "https://www.google.com/maps/place/The+Honey+Baked+Ham+Company/@42.2277168,-88.2992924,20.55z/data=!4m5!3m4!1s0x880f72cc743e5985:0x1289d39ab0b2a5fa!8m2!3d42.2278096!4d-88.2992237")
        let chipotle = Resturant(adresss: "5006 Northwest Hwy Ste A, Crystal Lake, IL 60014", phoneN: "815-444-1532", restName: "Chipotle", distance: 0, resturantLogo: "chipotle.png", restWebsite: "https://locations.chipotle.com/il/crystal-lake/5006-northwest-hwy", googleLink: "https://www.google.com/maps/place/Chipotle+Mexican+Grill/@42.2296032,-88.4456695,10.84z/data=!4m9!1m2!2m1!1schipotle!3m5!1s0x880f72cd821c4c2f:0x30260a879a6f51a7!8m2!3d42.2267599!4d-88.2949654!15sCghjaGlwb3RsZSIDiAEBWgoiCGNoaXBvdGxlkgESbWV4aWNhbl9yZXN0YXVyYW50")
        let breakingBread = Resturant(adresss: "230 W Virginia St #250, Crystal Lake, IL 60014", phoneN: "815-893-6510", restName: "Breaking Bread", distance: 0, resturantLogo: "breakingBread.png", restWebsite: "https://www.breakingbreadrestaurants.com/", googleLink: "https://www.google.com/maps/place/Breaking+Bread+-+Crystal+Lake/@42.2293721,-88.3307962,17z/data=!3m1!4b1!4m5!3m4!1s0x880f6d56a97e0b33:0xf92a9cb61ac55157!8m2!3d42.2293721!4d-88.3286022")
        let freddys = Resturant(adresss: "F2, 5500 Northwest Hwy Unit A, Crystal Lake, IL 60014", phoneN: "779-220-2345", restName: "Freddy's", distance: 0, resturantLogo: "freddy.png", restWebsite: "https://freddysusa.com/store/crystal-lake/", googleLink: "https://www.google.com/maps/place/Freddy's+Frozen+Custard+%26+Steakburgers/@42.2033054,-88.3319803,11z/data=!4m9!1m2!2m1!1sfreddy's!3m5!1s0x880f73f195f5e465:0xb0d049421c32542e!8m2!3d42.2269412!4d-88.3044568!15sCghmcmVkZHkncyIDiAEBWgoiCGZyZWRkeSdzkgEUaGFtYnVyZ2VyX3Jlc3RhdXJhbnQ")
        let potbelly = Resturant(adresss: "5900 Northwest Hwy", phoneN: "779-220-5094", restName: "Potbelly Sandwich Shop", distance: 0, resturantLogo: "potbellys", restWebsite: "https://www.potbelly.com/", googleLink: "https://www.google.com/maps/place/Potbelly+Sandwich+Shop/@42.2264645,-88.3149807,17z/data=!3m1!4b1!4m5!3m4!1s0x880f72b27e28b761:0x85e8a54e26e15ce6!8m2!3d42.2266154!4d-88.3127969")
        let portillos = Resturant(adresss: "855 Cog Cir", phoneN: "815-788-0900", restName: "Portillo's Hot Dog", distance: 0, resturantLogo: "", restWebsite: "https://www.portillos.com/index.html", googleLink: "https://www.google.com/maps/place/Portillo's+Hot+Dogs/@42.2269253,-88.2934733,17z/data=!3m1!4b1!4m5!3m4!1s0x880f72d4266d85a1:0xb682bdb177e4e80b!8m2!3d42.2269214!4d-88.2889886?hl=en")
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
        resturantArray.append(freddys)
        resturantArray.append(breakingBread)
        resturantArray.append(chipotle)
        resturantArray.append(potbelly)
        resturantArray.append(portillos)
        
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
                else if(nameChecky == "Honey Baked Ham"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Chipotle"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Breaking Bread"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Freddy's"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Potbelly Sandwich Shop"){
                    resturantsSelected.remove(at: i)
                    return
                }
                else if(nameChecky == "Portillo's Hot Dog"){
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

