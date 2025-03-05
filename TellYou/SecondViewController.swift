//
//  SecondViewController.swift
//  TellYou
//
//  Created by 김재우 on 3/5/25.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var bomiButton: UIButton!
    @IBOutlet weak var gyuhyunButton: UIButton!
    @IBOutlet weak var chanhoButton: UIButton!
    @IBOutlet weak var jaewooButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gyuhyunButton.imageView?.alpha = 0.5
        chanhoButton.imageView?.alpha = 0.5
        jaewooButton.imageView?.alpha = 0.5
        bomiButton.imageView?.alpha = 1.0
    }
    
    @IBAction func tappedBomiButton(_ sender: UIButton) {
        gyuhyunButton.imageView?.alpha = 0.5
        chanhoButton.imageView?.alpha = 0.5
        jaewooButton.imageView?.alpha = 0.5
        bomiButton.imageView?.alpha = 1.0
        print(#function)
    }
    @IBAction func tappedGyuhyunButton(_ sender: UIButton) {
        chanhoButton.imageView?.alpha = 0.5
        jaewooButton.imageView?.alpha = 0.5
        bomiButton.imageView?.alpha = 0.5
        gyuhyunButton.imageView?.alpha = 1.0
        print(#function)
    }
    @IBAction func tappedChanhoButton(_ sender: UIButton) {
        jaewooButton.imageView?.alpha = 0.5
        bomiButton.imageView?.alpha = 0.5
        gyuhyunButton.imageView?.alpha = 0.5
        chanhoButton.imageView?.alpha = 1.0
        print(#function)
    }
    @IBAction func tappedJaewooButton(_ sender: UIButton) {
        bomiButton.imageView?.alpha = 0.5
        gyuhyunButton.imageView?.alpha = 0.5
        chanhoButton.imageView?.alpha = 0.5
        jaewooButton.imageView?.alpha = 1.0
        print(#function)
            
    }
}
