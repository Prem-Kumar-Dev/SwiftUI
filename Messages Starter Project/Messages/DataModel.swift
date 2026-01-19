//
//  DataModel.swift
//  Messages
//
//  Created by Probeer on 08/01/26.
//

import Foundation

class DataModel {
    static let messages: [Message] = [
        Message(
            contact: Contact(name: "Eleven", image: "eleven"),
            content: "I flipped a van today… don’t ask 😌",
            timestamp: Date(timeIntervalSince1970: 1736075400)
        ),
        Message(
            contact: Contact(name: "Mike", image: "mike"),
            content: "Did you finish the campaign or rage quit again?",
            timestamp: Date(timeIntervalSince1970: 1735628400)
        ),
        Message(
            contact: Contact(name: "Dustin", image: "dustin"),
            content: "Bro, I found free pudding. LIFE = COMPLETE 🍮",
            timestamp: Date(timeIntervalSince1970: 1735887600)
        ),
        Message(
            contact: Contact(name: "Lucas", image: "lucas"),
            content: "Stay sharp. Something feels off tonight.",
            timestamp: Date(timeIntervalSince1970: 1735449600)
        ),
        Message(
            contact: Contact(name: "Will", image: "will"),
            content: "Can you hear that humming too…?",
            timestamp: Date(timeIntervalSince1970: 1735999800)
        ),
        Message(
            contact: Contact(name: "Steve", image: "steve"),
            content: "Trust me. This plan is 90% safe.",
            timestamp: Date(timeIntervalSince1970: 1735722000)
        ),
        Message(
            contact: Contact(name: "Vecna", image: "vecna"),
            content: "Every clock ticks closer. You can’t escape.",
            timestamp: Date(timeIntervalSince1970: 1735314000)
        ),
        Message(
            contact: Contact(name: "Mind Flayer", image: "mind_flayer"),
            content: "We are everywhere. You are already late.",
            timestamp: Date(timeIntervalSince1970: 1736061000)
        ),
        Message(
            contact: Contact(name: "Demogorgon", image: "demogorgon"),
            content: "Grrrrr… *unintelligible upside-down noises*",
            timestamp: Date(timeIntervalSince1970: 1735485600)
        )
    ]

    
    
}
