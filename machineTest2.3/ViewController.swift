//
//  ViewController.swift
//  machineTest2.3
//
//  Created by rpsindia on 12/09/19.
//  Copyright © 2019 Apurva. All rights reserved.
//

import UIKit


struct Flower {
    var name : String
    var images : String
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewFlower: UITableView!
    
    
    let flowerArray = [Flower(name: "Rose", images: "Roses"), Flower(name: "Lotus", images: "Lotuses"), Flower(name: "Sunflower", images: "sunflower"), Flower(name: "Mogra", images: "Mogras"), Flower(name: "Jasmine", images: "Jasmines"), Flower(name: "Lilly", images: "Lillies")]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return flowerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FlowerTableViewCell
        let model = flowerArray[indexPath.row]
        cell.labelText.text = model.name
        cell.flowerImageView.image = UIImage(named: model.images)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerFlower") as! FlowerHeaderrView
        headerView.labelHeader.text = "Beautiful Flowers"
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "headerFlower") as! FlowerHeaderrView
        footerView.labelHeader.text = "End of Flowers"
        return footerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let flowerCell = UINib(nibName: "FlowerTableViewCell", bundle: nil)
        self.tableViewFlower.register(flowerCell, forCellReuseIdentifier: "cell")
        
        
        let flowerHeader = UINib(nibName: "FlowerHeaderView", bundle: nil)
        self.tableViewFlower.register(flowerHeader, forHeaderFooterViewReuseIdentifier: "headerFlower")
        // Do any additional setup after loading the view, typically from a nib.
    }


}

