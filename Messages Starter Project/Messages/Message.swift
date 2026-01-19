//
//  Message.swift
//  Messages
//
//  Created by Probeer on 08/01/26.
//

import Foundation

struct Contact: Identifiable, Equatable {
    static func == (lhs: Contact, rhs: Contact) -> Bool {
        return lhs.id == rhs.id &&
            lhs.name == rhs.name &&
            lhs.image == rhs.image
    }
    var id = UUID()
    var name: String
    var image: String
}

struct Message: Identifiable, Equatable {
    static func == (lhs: Message, rhs: Message) -> Bool {
        return lhs.id == rhs.id &&
            lhs.contact == rhs.contact &&
            lhs.timestamp == rhs.timestamp &&
            lhs.isPinned == rhs.isPinned &&
            lhs.isRead == rhs.isRead &&
            lhs.isAlertHidden == rhs.isAlertHidden
    }
    var id = UUID()
    var contact: Contact
    var content: String
    var timestamp: Date
    var isPinned: Bool = true
    var isRead: Bool = false
    var isAlertHidden: Bool = true
}
