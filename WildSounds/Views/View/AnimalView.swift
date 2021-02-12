//
//  AnimalView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/12/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct AnimalView: View {
    
    let name: String
    let imageName: String
    let habitat: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100)
                // TODO: Put some random gradients
                .background(Color.red)
            HStack {
                Text(name)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Spacer()
            }
            HStack {
                Text("@\(habitat)")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.gray)
                Spacer()
            }
            HStack {
                // TODO: Use the @Binding for show or hide
                Text("INCLUDED")
                    .frame(width: 90, height: 30, alignment: .center)
                    .font(.system(size: 16, weight: .medium, design: .default))
                    .foregroundColor(.black)
                    .background(Color.orange)
                    .cornerRadius(5.0)
                Spacer()
            }
            .padding(.top, 2.0)
        }
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView(name: "Snake", imageName: "snake", habitat: "forest")
            .preferredColorScheme(.dark)
    }
}
