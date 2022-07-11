//
//  ListView.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 09-02-22.
//
// list swapi characters
import SwiftUI

struct ListView: View {
/*    @StateObject var viewModel: ViewModel = ViewModel() you dont have to use this anymore because
 view model is an environmentobject and where i first create this environment object i already make the instance
 of viewmodel
*/
    @EnvironmentObject var viewModel: ViewModel
    var body: some View {
            List{
                ForEach(viewModel.swapis, id: \.name){ swapi in
                    NavigationLink(destination: DetailView(character: swapi), label:{
                        Label("\(swapi.name)",
                              systemImage: "star.fill").foregroundColor(.black)
                    })
                }
            }
            .navigationTitle("Personajes de Star Wars") 
        
    }
}

/*
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
*/
