//
//  ViewController.swift
//  TellYou
//
//  Created by Mycom on 3/4/25.
//

import UIKit

class ViewController: UIViewController {
    
    var test = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func character1Button(_ sender: Any) {
        DataManager.shared.setValue(key: "selectedbutton", value: "1")
    }
    
    @IBAction func character2Button(_ sender: Any) {
        DataManager.shared.setValue(key: "selectedbutton", value: "2")
    }
    
    @IBAction func character3Button(_ sender: Any) {
        DataManager.shared.setValue(key: "selectedbutton", value: "3")
    }
    
    @IBAction func character4Button(_ sender: Any) {
        DataManager.shared.setValue(key: "selectedbutton", value: "4")
    }
}
