//
//  MovieRowView.swift
//  Movie
//
//  Created by CodeWithChris on 9/8/23.
//

import SwiftUI

struct MovieRow: View {
    let movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(movie.title)
                    .bold()
                Spacer()
                Text(String(movie.releaseYear))
            }
            Text("Directed by: \(movie.directedBy)")
            Spacer()
                .frame(height: 16)
            Text(movie.description)
                .multilineTextAlignment(.leading)
            Spacer()
                .frame(height: 16)
            HStack {
                Text("Personal Rating:")
                ForEach(0..<movie.rating) { _ in
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                }
            }
        }
    }
}

#Preview {
    MovieRow(
        movie: Movie(
            title: "The Godfather",
            description: "A crime drama that explores the Italian-American Mafia, featuring Marlon Brando and Al Pacino.",
            directedBy: "Francis Ford Coppola",
            releaseYear: 1972,
            isDoneWatching: true,
            rating: 5
        )
    )
}
