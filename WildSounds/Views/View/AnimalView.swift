//
//  AnimalView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/12/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct AnimalView: View {
    
    @Binding var hasPremiumMembership: Bool
    
    let wiki: Wiki
    
    var body: some View {
        VStack {
            Image(wiki.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .background(generateRandomGradient())
            HStack {
                Text(wiki.name)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Spacer()
            }
            HStack {
                Text("@\(wiki.habit)")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.gray)
                Spacer()
            }
            if wiki.requiredMember {
                HStack {
                    Text(hasPremiumMembership ? "INCLUDED": "PREMIUM")
                        .frame(width: 90, height: 30, alignment: .center)
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .foregroundColor(.black)
                        .background(Color.orange)
                        .cornerRadius(5.0)
                    Spacer()
                }
                .padding(.top, 2.0)
            }
            Spacer()
        }
    }
    
    private func generateRandomGradient() -> LinearGradient {
        let colorsPool: [Color] = [.red, .green, .white, .orange, .blue, .black, .pink, .purple, .yellow]
        return LinearGradient(gradient: Gradient(colors: [colorsPool.randomElement()!, colorsPool.randomElement()!]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView(hasPremiumMembership: .constant(true), wiki: MockData.wikis[4])
            .preferredColorScheme(.dark)
    }
}
