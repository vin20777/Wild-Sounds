//
//  WideButton.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/14/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct WideButton: View {
    
    var description: String
    var systemImageName: String
    var action: (() -> Void)?
    
    var body: some View {
        Button {
            if let action = action {
                action()
            }
        } label: {
            HStack {
                Image(systemName: systemImageName)
                    .resizable()
                    .frame(width: 25, height: 25)
                Text(description)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.leading, 10.0)
                Spacer(minLength: 60)
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 10, height: 18)
            }
            .padding(EdgeInsets(top: 20, leading: 15, bottom: 20, trailing: 15))
            .background(Color.grayBlue)
            .foregroundColor(.white)
            .cornerRadius(10.0)
        }
    }
}

struct WideButton_Previews: PreviewProvider {
    static var previews: some View {
        WideButton(description: "Imagine & Invent Before They Ask", systemImageName: "leaf", action: nil)
    }
}
