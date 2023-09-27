//
//  DataService.swift
//  Movie
//
//  Created by CodeWithChris on 9/8/23.
//

import Foundation

struct DataService {
    func getListToWatch() -> [Movie] {
        return [
            Movie(
                title: "Lawrence of Arabia",
                description: "An epic historical drama that follows the life of T.E. Lawrence during World War I.",
                directedBy: "David Lean",
                releaseYear: 1962,
                isDoneWatching: false,
                rating: 4
            ),
            Movie(
                title: "The Shawshank Redemption",
                description: "A prison drama based on a Stephen King novella, known for its powerful storytelling.",
                directedBy: "Frank Darabont",
                releaseYear: 1994,
                isDoneWatching: false,
                rating: 5
            ),
            Movie(
                title: "Star Wars: Episode IV - A New Hope",
                description: "The original Star Wars film that launched one of the most iconic franchises in cinematic history.",
                directedBy: "George Lucas",
                releaseYear: 1977,
                isDoneWatching: false,
                rating: 5
            ),
            Movie(
                title: "The Wizard of Oz",
                description: "A beloved musical fantasy film that has captivated audiences for generations.",
                directedBy: "Victor Fleming",
                releaseYear: 1939,
                isDoneWatching: false,
                rating: 4
            ),
            Movie(
                title: "Pulp Fiction",
                description: "A non-linear crime film with an ensemble cast and innovative storytelling.",
                directedBy: "Quentin Tarantino",
                releaseYear: 1994,
                isDoneWatching: false,
                rating: 5
            )
        ]
    }
    
    func getWatched() -> [Movie] {
        return [
            Movie(
                title: "Gone with the Wind",
                description: "A timeless epic set during the American Civil War, known for its memorable characters and sweeping romance.",
                directedBy: "Victor Fleming",
                releaseYear: 1939,
                isDoneWatching: true,
                rating: 5
            ),
            Movie(
                title: "The Godfather",
                description: "A crime drama that explores the Italian-American Mafia, featuring Marlon Brando and Al Pacino.",
                directedBy: "Francis Ford Coppola",
                releaseYear: 1972,
                isDoneWatching: true,
                rating: 5
            ),
            Movie(
                title: "Casablanca",
                description: "A romantic drama set in World War II, starring Humphrey Bogart and Ingrid Bergman.",
                directedBy: "Michael Curtiz",
                releaseYear: 1942,
                isDoneWatching: true,
                rating: 4
            ),
            Movie(
                title: "Citizen Kane",
                description: "Often cited as one of the greatest films ever made, it tells the story of a newspaper magnate's rise and fall.",
                directedBy: "Orson Welles",
                releaseYear: 1941,
                isDoneWatching: true,
                rating: 4
            ),
            Movie(
                title: "Schindler's List",
                description: "A powerful portrayal of a German businessman who saved the lives of more than a thousand Polish-Jewish refugees during the Holocaust.",
                directedBy: "Steven Spielberg",
                releaseYear: 1993,
                isDoneWatching: true,
                rating: 5
            )
        ]
    }
}
