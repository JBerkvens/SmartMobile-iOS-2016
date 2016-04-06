//
//  AboutViewController.swift
//  glow2015
//
//  Created by Jeroen Berkvens on 17/03/16.
//  Copyright © 2016 Fontys Universities. All rights reserved.
//

import Foundation
import UIKit;

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webDeveloperDetails: UITextView!
    @IBOutlet weak var secretaryDetails: UITextView!
    @IBOutlet weak var studentSupervisorDetails: UITextView!
    @IBOutlet weak var internDetails: UITextView!
    @IBOutlet weak var webDeveloperButton: UIButton!
    @IBOutlet weak var secretaryButton: UIButton!
    @IBOutlet weak var studentSupervisorButton: UIButton!
    @IBOutlet weak var internButton: UIButton!
    override func viewDidLoad(){
        super.viewDidLoad();
    }
    @IBAction func showDetails(sender: AnyObject) {
        var title:String?;
        var message:String?;
        let sender_button = sender as! UIButton;
        switch (sender_button) {
            case webDeveloperButton:
                title = "Web Developer Details";
                message = self.webDeveloperDetails.text;
                break;
            case secretaryButton:
                title = "Secretary Details";
                message = self.secretaryDetails.text;
                break;
            case studentSupervisorButton:
                title = "Student Supervisor Details";
                message = studentSupervisorDetails.text;
                break;
            case internButton:
                title = "Intern Details";
                message = internDetails.text;
                break;
            default:
                title = "Error";
                message = "Not a correct action.";
                break;
        }
        
        let actionSheetController: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
        }
        actionSheetController.addAction(cancelAction)
        self.presentViewController(actionSheetController, animated: true, completion: nil)
    }
}