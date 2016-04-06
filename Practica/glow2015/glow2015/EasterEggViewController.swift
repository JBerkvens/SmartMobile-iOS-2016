//
//  EasterEggViewController.swift
//  glow2015
//
//  Created by Jeroen Berkvens on 17/03/16.
//  Copyright © 2016 Fontys Universities. All rights reserved.
//

import Foundation
import UIKit;

class EasterEggViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad();
    }
    @IBAction func closeSelf(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion:nil);
    }
}