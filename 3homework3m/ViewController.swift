//
//  ViewController.swift
//  3homework3m
//
//  Created by mavluda on 12/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
        if numberField.hasText {
            let vc: TableViewController = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            numberField.layer.borderColor = UIColor.red.cgColor
            numberField.layer.borderWidth = 5
            numberField.placeholder = "Fill the field"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

