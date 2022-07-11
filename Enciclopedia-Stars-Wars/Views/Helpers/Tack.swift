//
//  Tack.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 14-02-22.
//

import SwiftUI

struct Tack: View {
    var body: some View {
        Image(systemName: "circle.fill") 
            .foregroundColor(Custom.gray)
            .overlay(Circle()
                        .trim(from: 0, to: 0.5)
                        .fill(Custom.grayShadow)
                        .frame(height: .infinity), alignment: .bottom)
            .overlay(Circle().stroke(Custom.grayShadow,lineWidth: 1).overlay(Text("X").foregroundColor(.gray)))
            .padding()
    }
}

struct Tack_Previews: PreviewProvider {
    static var previews: some View {
        Tack()
    }
}
