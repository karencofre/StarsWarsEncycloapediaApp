//
//  MoviesListView.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 15-02-22.
//
// despliega las peliculas de 


import SwiftUI

struct MoviesListView: View {
    @EnvironmentObject var viewModel: ViewModel 
    var body: some View {
        List{
            ForEach(viewModel.swapisMovies, id: \.title){ swapiMovie in
                NavigationLink(destination: MovieDetailView(movie: swapiMovie), label:{
                    Label("\(swapiMovie.title)",
                          systemImage: "film.fill").foregroundColor(.black)
                })
            }
        }
        .navigationTitle("Peliculas de Star Wars")
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}
