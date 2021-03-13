//
//  agentSingleton.swift
//  valorantRandomizer
//
//  Created by Roshan Jamkatel on 3/12/21.
//

import Foundation

class savedAgents {
    static let sharedInstance = savedAgents()
    var dictionary: [Int: String] = [0: "Astra", 1: "Breach", 2: "Brimstone", 3: "Cypher", 4: "Jett", 5: "Killjoy", 6: "Omen", 7: "Phoenix", 8: "Raze", 9: "Reyna", 10: "Sage", 11: "Skye", 12: "Sova", 13: "Viper", 14: "Yoru"]
    
    func reset() {
        dictionary = [0: "Astra", 1: "Breach", 2: "Brimstone", 3: "Cypher", 4: "Jett", 5: "Killjoy", 6: "Omen", 7: "Phoenix", 8: "Raze", 9: "Reyna", 10: "Sage", 11: "Skye", 12: "Sova", 13: "Viper", 14: "Yoru"]
    }
    
                 
}
