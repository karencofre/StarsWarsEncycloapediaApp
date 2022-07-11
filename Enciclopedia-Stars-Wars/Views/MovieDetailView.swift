//
//  MovieDetailView.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 16-02-22.
//

import SwiftUI

struct MovieDetailView: View {
    
    @State var movie: SwapiMovieDataModel // this is for get the movie selected on the list view of movies
    var body: some View {
        VStack(alignment: .leading){
            Text("\(movie.opening_crawl)")
            Text("Date Released: \(movie.release_date)")
                .padding(.top)
        }
        
            .navigationTitle(movie.title)
    }
}
//
//struct MovieDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieDetailView(movie:)
//    }
//}
