//
//  TitleView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/14/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 28, weight: .bold, design: .default))
            .lineSpacing(5.0)
            .foregroundColor(.white)
            .multilineTextAlignment(.leading)
            .padding(.top, 30.0)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Hello World!")
            .preferredColorScheme(.dark)
    }
}
