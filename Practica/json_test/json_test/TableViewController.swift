//
//  TableViewController.swift
//  json_test
//
//  Created by Jeroen Berkvens on 06/04/16.
//  Copyright © 2016 Fontys Universities. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var pirates = [Pirate]();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.loadJSON();
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pirates.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell;
        let currentRow = indexPath.row;
        let currentPirate = self.pirates[currentRow];
        cell.textLabel?.text = currentPirate.name;
        return cell;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedRow = self.tableView.indexPathForSelectedRow;
        let selectedPirate = self.pirates[selectedRow!.row];
        let controller = segue.destinationViewController as! DetailViewController;
        controller.currentPirate = selectedPirate;
    }
    
    func loadJSON() {
        let url = NSURL(string: "http://moridrin.com/ios/Pirates/getPirates.php");
        let request = NSURLRequest(URL: url!);
        let session = NSURLSession.sharedSession();
        let dataTask = session.dataTaskWithRequest(request) { (data, response, error) -> Void in
            do {
                if let jsonObject:AnyObject = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) {
                    self.parseJson(jsonObject);
                }
            } catch {
                print("Error Parsing JSON");
            }
        }
        dataTask.resume();
    }
    
    func parseJson(jsonObject:AnyObject) {
        if let jsonData = jsonObject as? NSArray {
            for item in jsonData {
                let newPirate = Pirate(name: item.objectForKey("name") as! String);
                newPirate.yearsActive = item.objectForKey("yearsActive") as? Int;
                newPirate.notes = item.objectForKey("notes") as? String;
                pirates.append(newPirate);
            }
        }
        for pirate in pirates {
            print(pirate.getInfo());
        }
        self.tableView.reloadData();
    }
}
