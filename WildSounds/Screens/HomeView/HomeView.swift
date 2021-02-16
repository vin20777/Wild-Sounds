//
//  HomeView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/11/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var navTitle: String
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.classic
                    .edgesIgnoringSafeArea(.all)
                ScrollView(.vertical) {
                    HStack {
                        VStack {
                            TitleView(title: viewModel.welcomeText)
                            GalleryView(hasPremiumMembership: $viewModel.hasPremiumMembership, title: "Listen more like XXX sound", wikis: viewModel.mockData)
                            GalleryView(hasPremiumMembership: $viewModel.hasPremiumMembership, title: "Enjoy the ennvironment vibe", wikis: viewModel.mockData.reversed())
                            Spacer(minLength: 30)
                            WideButton(description: "Switch between Premium and Regular", systemImageName: "switch.2", action: {
                                // Toggle your membership and change UI accordingly
                                viewModel.hasPremiumMembership = !viewModel.hasPremiumMembership
                            })
                            Spacer(minLength: 30)
                        }
                        Spacer()
                    }
                }
            }
            .navigationBarTitle(navTitle, displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .accentColor(.classic)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(navTitle: "Good Morning")
    }
}
