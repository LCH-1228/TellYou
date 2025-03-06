//
//  WebViewController.swift
//  TellYou
//
//  Created by Chanho Lee on 3/6/25.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myUrl = URL(string: DataManager.shared.getValue(key: "url")!)
        let myRequest = URLRequest(url: myUrl!)
        webView.load(myRequest)
    }
}
