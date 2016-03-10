//
//  ViewController.swift
//  HellGlow World (appcoda)
//
//  Created by Jeroen Berkvens on 10/03/16.
//  Copyright © 2016 Fontys Universities. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage(sender: AnyObject) {
        let alertController = UIAlertController(title: "Welcome to My Second App", message: "HellGlow World", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }

}

