//
//  ViewController.swift
//  SafariViewController
//
//  Created by Josh Bruce on 29/09/2015.
//  Copyright © 2015 Swiftcasts. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {
    
    let website = "https://swiftcasts.com"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openSafariViewController(sender: UIButton) {
        if let websiteUrl = NSURL(string: website) {
            let safariViewController = SFSafariViewController(URL: websiteUrl)
            safariViewController.delegate = self
            presentViewController(safariViewController, animated: true, completion: nil)
        }
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        print("Closed Safari")
    }

}