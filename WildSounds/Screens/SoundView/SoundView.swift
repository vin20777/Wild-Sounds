//
//  SoundView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/12/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct SoundView: View {
    
    let wiki: Wiki
    
    var body: some View {
        Text(wiki.name)
            .font(.largeTitle)
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView(wiki: MockData.wikis[1])
    }
}
