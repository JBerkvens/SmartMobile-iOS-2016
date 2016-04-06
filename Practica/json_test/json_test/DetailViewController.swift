//
//  DetailViewController.swift
//  json_test
//
//  Created by Jeroen Berkvens on 06/04/16.
//  Copyright © 2016 Fontys Universities. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var currentPirate:Pirate?;
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearsActiveLabel: UILabel!
    @IBOutlet weak var notesTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad();
        self.nameLabel.text = currentPirate!.name;
        self.yearsActiveLabel.text = "Years Active: \(currentPirate!.yearsActive!)";
        self.notesTextView.text = currentPirate!.notes!;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}
