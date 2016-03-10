//
//  City.swift
//  HellGlow World
//
//  Created by Jeroen Berkvens on 04/03/16.
//  Copyright © 2016 Fontys Universities. All rights reserved.
//

import Foundation

class City {
    var name:String!
    var population:Int!
    var glowActs = [GlowAct]();
    
    func showAllInfo() {
        showBasicInfo();
        showActs();
    }
    
    func showBasicInfo() {
        print("In the city of \(name) there are currently living \(population) people.")
    }
    
    func showActs() {
        print("The following \(glowActs.count) acts are shown in \(name): ");
        for glowAct in glowActs {
            print("\t" + glowAct.getActInfo());
        }
    }
}