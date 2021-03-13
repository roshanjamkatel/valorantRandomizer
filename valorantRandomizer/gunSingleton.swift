//
//  gunSingleton.swift
//  valorantRandomizer
//
//  Created by Roshan Jamkatel on 3/12/21.
//

import Foundation

class savedGuns {
    static let sharedInstance = savedGuns()
    var dictionary: [Int: String] = [0: "Classic", 1: "Shorty", 2: "Frenzy", 3: "Ghost", 4: "Sheriff", 5: "Stinger", 6: "Spectre", 7: "Bucky", 8: "Judge", 9: "Phantom", 10: "Vandal", 11: "Bulldog", 12: "Guardian", 13: "Marshal", 14: "Operator", 15: "Ares", 16: "Odin", 17: "TacticalKnife"]
    
}
