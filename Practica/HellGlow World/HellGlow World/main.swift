//
//  main.swift
//  HellGlow World
//
//  Created by Jeroen Berkvens on 04/03/16.
//  Copyright © 2016 Fontys Universities. All rights reserved.
//

import Foundation

extension Array
{
    mutating func shuffle()
    {
        for _ in 0..<10
        {
            sortInPlace { (_,_) in arc4random() < arc4random() }
        }
    }
}
var artNames = ["Sequence with Design", "My Element of Despair", "Evolving Sadness", "Impression of Instant Intensity", "Echo vs Concept", "Meditative Plan", "Happy Bachelor - Warm Chromatic", "Uplifting Ellipse of Death", "The Shimmering Intensity", "Nude Desiring an Umbrella", "Mind-Bending Sketch of Effective Exclusion", "The Vanishing Interior", "Crippled Analysis", "Dance in Redhead"];
artNames.shuffle();

print("HellGlow, World!\n");

var eindhoven = City();
eindhoven.name = "Eindhoven";
eindhoven.population = 216036;

for i in 0...Int(arc4random_uniform(10)+2) {
    var glowAct = GlowAct()
    glowAct.name = artNames[i];
    glowAct.rating = Int(arc4random_uniform(7)) + 4;
    var startHour = Int(arc4random_uniform(24));
    var startMinute = Int(arc4random_uniform(60));
    var startHourString:String!;
    if (startHour < 10) {
        startHourString = "0\(startHour)";
    } else {
        startHourString = "\(startHour)";
    }
    var startMinuteString:String!;
    if (startMinute < 10) {
        startMinuteString = "0\(startMinute)";
    } else {
        startMinuteString = "\(startMinute)";
    }
    glowAct.startTime = "\(startHourString):\(startMinuteString)";
    eindhoven.glowActs.append(glowAct);
}
eindhoven.showAllInfo();