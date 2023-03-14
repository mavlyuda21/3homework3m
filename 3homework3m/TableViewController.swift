//
//  TableViewController.swift
//  3homework3m
//
//  Created by mavluda on 13/3/23.
//

import UIKit

class TableViewController: UITableViewController {

    var namesArray = ["Natalia","Maria","Ivan","Nika","Sveta","Yulia","Marina","Karina","Lika","Denis","Yana","Kristina","Sonya"]
    var numbersArray = ["996 (555) 909090","996 (777) 908080","996 (557) 709097","996 (999) 999099","996 (553) 939393","996 (551) 919191","996 (550) 550550","996 (556) 666666","996 (700) 567567","996 (777) 979797","996 (772) 227227","996 (990) 909090","996 (558) 989098"]
    
    var imagesArray = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
}

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return namesArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell")
        cell?.textLabel?.text = namesArray[indexPath.row]
        cell?.detailTextLabel?.text = numbersArray[indexPath.row]
        cell?.imageView?.image = UIImage(named: imagesArray[indexPath.row])
        cell?.imageView?.layer.cornerRadius = 17
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }

    
}
