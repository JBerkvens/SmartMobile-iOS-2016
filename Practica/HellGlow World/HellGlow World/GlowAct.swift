//
//  GlowAct.swift
//  HellGlow World
//
//  Created by Jeroen Berkvens on 04/03/16.
//  Copyright © 2016 Fontys Universities. All rights reserved.
//

import Foundation

class GlowAct {
    var name:String!
    var rating:Int!
    var startTime:String!
    
    func showInfo() {
        print("The act is called \"\(name)\" and starts at \(startTime). It is given an average rating of \(rating).")
    }
}