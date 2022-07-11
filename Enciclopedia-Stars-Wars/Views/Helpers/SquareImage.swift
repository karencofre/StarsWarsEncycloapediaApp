//
//  SquareImage.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 14-02-22.
//

import SwiftUI

struct SquareImage: View {
    var body: some View {
        VStack {
            Image("Yoda")
                .resizable()
                .scaledToFit()
        }
        
    }
}

struct SquareImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareImage()
    }
}
