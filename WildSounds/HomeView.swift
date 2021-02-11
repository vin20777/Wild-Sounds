//
//  HomeView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/11/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.orange)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding()
                .navigationTitle("Audible")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
