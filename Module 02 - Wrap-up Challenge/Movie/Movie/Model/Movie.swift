//
//  Movie.swift
//  Movie
//
//  Created by CodeWithChris on 9/8/23.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let directedBy: String
    let releaseYear: Int
    var isDoneWatching: Bool = false
    var rating: Int = 0
}
