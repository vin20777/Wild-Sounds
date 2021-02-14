//
//  GalleryView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/14/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct GalleryView: View {
    
    @Binding var hasPremiumMembership: Bool
    
    let title: String
    let wikis: [Wiki]
    let rows: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .lineSpacing(5.0)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(15.0)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows, spacing: 15.0) {
                    ForEach(wikis) { wiki in
                        NavigationLink(destination: SoundView(wiki: wiki)) {
                            AnimalView(hasPremiumMembership: $hasPremiumMembership, wiki: wiki)
                        }
                    }
                }
                .frame(height: 200, alignment: .top)
                .padding(.leading, 15)
                .padding(.trailing, 15)
            }
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView(hasPremiumMembership: .constant(true), title: "Articulate The Possible & Move Fast To Make It Real", wikis: MockData.wikis)
            .preferredColorScheme(.dark)
    }
}
