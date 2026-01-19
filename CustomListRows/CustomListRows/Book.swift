//
//  Book.swift
//  CustomListRows
//
//  Created by Probeer on 08/01/26.
//

import Foundation

enum Genre: String, CaseIterable{
    case all = "All"
    case mystery = "Mystery"
    case horror = "Horror"
    case fantasy = "Fantasy"
    case scifi = "SciFi"
    case thriller = "Thriller"
    case isekai = "Isekai"
}

struct Book: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let author: String
    let genre: Genre
    let coverImage: String
}
