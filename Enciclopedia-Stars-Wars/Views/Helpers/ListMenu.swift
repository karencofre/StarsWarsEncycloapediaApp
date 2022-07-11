//
//  ListMenu.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 14-02-22.
//

import SwiftUI

struct ListMenu: View {
    
    var body: some View {
            List {
                NavigationLink("Listar Personajes", destination: ListView())
                NavigationLink("Listar Peliculas", destination: MoviesListView())
                Link("See my github", destination: URL(string: "https://github.com/karencofre")!)
            }
            .navigationTitle("App Menu")
    }
}

struct ListMenu_Previews: PreviewProvider {
    static var previews: some View {
        ListMenu()
    }
}
