//
//  Poster.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 14-02-22.
//

import SwiftUI

struct Poster: View {
    var body: some View {
      
            Image("poster")
                    .resizable()
                    .scaledToFit()
                    .overlay(alignment: .topLeading) { Tack() }
                        .overlay(alignment: .topTrailing) {Tack() }
                        .overlay(alignment: .bottomLeading) { Tack() }
                    .overlay(alignment: .bottomTrailing) { Tack() }
                    .overlay(Rectangle().stroke(Custom.gray,lineWidth:5))
                    
 
          
        
    }
}

struct Poster_Previews: PreviewProvider {
    static var previews: some View {
        Poster()
    }
}
