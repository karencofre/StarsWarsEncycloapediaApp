//
//  HomeView.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 09-02-22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel: ViewModel = ViewModel()
    let gradient = Gradient(colors: [Custom.gray, Custom.grayShadow, Custom.black])
    var body: some View {
        NavigationView{
             
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
                ListMenu()
                    .offset(y:70)
                    .padding([.bottom,.top],30)
                
            }
            
        }.ignoresSafeArea()
        .navigationBarHidden(true)
        
        }
        .accentColor(Custom.black)
        .onAppear{
            
            viewModel.getSwapis()
            viewModel.getMovies()
            
        }
        .environmentObject(viewModel)
    }
}
struct Custom {
    static let gray: Color = Color("gray")
    static let grayShadow: Color = Color("grayShadow")
    static let white: Color = Color("white")
    static let whiteBackground: Color = Color("whiteBackground")
    static let black: Color = Color("black")
    
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
