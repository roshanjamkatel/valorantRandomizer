//
//  Agents.swift
//  valorantRandomizer
//
//  Created by Andy on 3/1/21.
//

import Foundation
import UIKit

var agents = [
    Agent(name: "Reyna",
           type: .duelist,
           shortDescription: "Duelist",
           longDescription: "Forged in the heart of Mexico, Reyna dominates single combat, popping off with each kill she scores. Her capability is only limited by her raw skill, making her highly dependent on performance."),
    Agent(name: "Raze",
           type: .duelist,
           shortDescription: "Duelist",
           longDescription: "Raze explodes out of Brazil with her big personality and big guns. With her blunt-force-trauma playstyle, she excels at flushing entrenched enemies and clearing tight spaces with a generous dose of boom."),
    Agent(name: "Jett",
           type: .duelist,
           shortDescription: "Duelist",
           longDescription: "Representing her home country of South Korea, Jett's agile and evasive fighting style lets her take risks no one else can. She runs circles around every skirmish, cutting enemies before they even know what hit them."),
    Agent(name: "Phoenix",
           type: .duelist,
           shortDescription: "Duelist",
           longDescription: "Hailing from the U.K., Phoenix's star power shines through in his fighting style, igniting the battlefield with flash and flare. Whether he's got backup or not, he'll rush into a fight on his own terms."),
    Agent(name: "Yoru",
           type: .duelist,
           shortDescription: "Duelist",
           longDescription: "Japanese native, Yoru, rips holes straight through reality to infiltrate enemy lines unseen. Using deception and aggression in equal measure, he gets the drop on each target before they know where to look."),
    Agent(name: "Omen",
           type: .controller,
           shortDescription: "Controller",
           longDescription: "A phantom of a memory, Omen hunts in the shadows. He renders enemies blind, teleports across the field, then lets paranoia take hold as his foe scrambles to learn where he might strike next."),
    Agent(name: "Brimstone",
           type: .controller,
           shortDescription: "Controller",
           longDescription: "Joining from the USA, Brimstone's orbital arsenal ensures his squad always has the advantage. His ability to deliver utility precisely and from a distance make him an unmatched boots-on-the-ground commander."),
    Agent(name: "Viper",
           type: .controller,
           shortDescription: "Controller",
           longDescription: "The American chemist, Viper deploys an array of poisonous chemical devices to control the battlefield and cripple the enemy's vision. If the toxins don't kill her prey, her mind games surely will."),
    Agent(name: "Cypher",
           type: .sentinel,
           shortDescription: "Sentinel",
           longDescription: "The Moroccan information broker, Cypher is a one-man surveillance network who keeps tabs on the enemy's every move. No secret is safe. No maneuver goes unseen. Cypher is always watching."),
    Agent(name: "Sova",
           type: .initiator,
           shortDescription: "Initiator",
           longDescription: "Born from the eternal winter of Russia's tundra, Sova tracks, finds, and eliminates enemies with ruthless efficiency and precision. His custom bow and incredible scouting abilities ensure that even if you run, you cannot hide."),
    Agent(name: "Sage",
           type: .sentinel,
           shortDescription: "Sentinel",
           longDescription: "The stronghold of China, Sage creates safety for herself and her team wherever she goes. Able to revive fallen friends and stave off aggressive pushes, she provides a calm center to a hellish fight."),
    Agent(name: "Breach",
           type: .initiator,
           shortDescription: "Initiator",
           longDescription: "Breach, the bionic Swede, fires powerful, targeted kinetic blasts to aggressively clear a path through enemy ground. The damage and disruption he inflicts ensures no fight is ever fair.")
]

class Agent{
    enum `Type` : String {
        case duelist = "duelist"
        case controller = "controller"
        case initiator = "initiator"
        case sentinel = "sentinel"
    }
    var name: String
    var type: Type
    var longDescription: String
    var shortDescription: String


    init (name: String, type: Type, shortDescription: String, longDescription: String){
        self.name = name
        self.type = type
        self.longDescription = longDescription
        self.shortDescription = shortDescription
        
    
}
}
