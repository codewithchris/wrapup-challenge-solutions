//
//  ContentView.swift
//  Movie
//
//  Created by CodeWithChris on 9/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var movies = [Movie]()
    @State private var title = "List to Watch"
    let dataService = DataService()
    
    var body: some View {
        NavigationStack {
            VStack {
                List(movies) { movie in
                    MovieRow(movie: movie)
                }
                .navigationBarTitle(title)
                
                HStack {
                    BorderedButton(title: "List to Watch", borderColor: .blue) {
                        title = "List to Watch"
                        movies = dataService.getListToWatch()
                    }
                    BorderedButton(title: "Watched", borderColor: .blue) {
                        title = "Watched"
                        movies = dataService.getWatched()
                    }
                }
            }
        }
        .onAppear {
            movies = dataService.getListToWatch()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
