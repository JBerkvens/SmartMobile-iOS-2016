//
//  Pirate.swift
//  json_test
//
//  Created by Jeroen Berkvens on 06/04/16.
//  Copyright © 2016 Fontys Universities. All rights reserved.
//

import Foundation
class Pirate {
    let name:String!;
    var yearsActive:Int?;
    var notes:String?;
    
    init (name:String) {
        self.name = name;
    }
    
    func getInfo()->String {
        let yearsActive:Int! = self.yearsActive;
        let notes:String! = self.notes;
        return "Name:\t\t\t\(name)\nYears Active:\t\(yearsActive)\nNotes:\t\t\t\(notes)";
    }
}