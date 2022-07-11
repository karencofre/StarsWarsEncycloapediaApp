//
//  DetailView.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 09-02-22.
//

import SwiftUI

struct DetailView: View {
    
    @State var character: SwapiDataModel //this is for get the character from the list view of characters
    let gradient = Gradient(colors: [Custom.gray,Custom.grayShadow,Custom.black])
    var body: some View {
       
        
        ZStack {
            Custom.whiteBackground
            VStack{
                ZStack{
                    Rectangle().fill(LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom))
                    Poster()
                        .frame(height:380,alignment:.bottom)
                        .offset(y: 70)
                        .padding(.top,70)
                        
                }
                List {
                    Text("Height: \(character.height)")
                    Text("Mass: \(character.mass)")
                    Text("Eye Color: \(character.eye_color)")
                    Text("Skin Color: \(character.skin_color)")
                    Text("Hair Color: \(character.hair_color)")
                    Text("Gender: \(character.gender)")
                }
                    .offset(y:70)
                    .padding(.bottom,70)
                
                    .navigationTitle("\(character.name)")
            }
            
        }.ignoresSafeArea()
       
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(character: "Yoda")
//    }
//}
