//
//  SoundView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/12/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct SoundView: View {
    
    let rows: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                Text("aa")
                    .font(.title)
                Text("bb")
                    .font(.headline)
                Text("cc")
                    .font(.headline)
                Text("dd")
                    .font(.headline)
                Text("ee")
            }
            .frame(height: 100, alignment: .top)
            Spacer()
        }
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView()
    }
}
