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
                Color(white: 20/255)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Spacer()
                    Text("Good afternoon, Tsao. \n You have 1 credit to spend.")
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .navigationBarTitle("audible", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
