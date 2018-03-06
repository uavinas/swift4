//
//  WebViewController.swift
//  WebView
//
//  Created by Ishan Weerasooriya on 6/6/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    //MARk: outlets
    @IBOutlet var webView: UIWebView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var txtNumber: UITextField!
    
    
    
    //MARK: variables
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadWeb()

       
    }
    
    @IBAction func pressedCall(_ sender: Any) {
        var url = NSURL(string: "tel://1234567890")!
        UIApplication.shared.open(url as! URL)
    }
    

    func loadWeb() {
    
        let url = NSURL(string: "https://www.google.lk/?gfe_rd=cr&ei=9lk3Wae8O4-BrAG6zaqwAw")
        let request = NSURLRequest(url: url as! URL)
        webView.loadRequest(request as URLRequest)
    }
    
    func didWebViewStartLoad(_ : UIWebView){
    
        activityIndicator.startAnimating()
        NSLog("The webview is strats loading")
    }
    
    func didWebViewFinishLoad(_ : UIWebView){
    
        activityIndicator.stopAnimating()
        NSLog("The web view finish loading")
    }

 
}
