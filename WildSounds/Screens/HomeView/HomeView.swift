//
//  HomeView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/11/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    // TODO: Move to view model
    let rows: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(white: 20/255)
                    .edgesIgnoringSafeArea(.all)
                HStack {
                    VStack {
                        Text("Good afternoon, USER.\nYou have 1 credit to spend.")
                            .font(.system(size: 28, weight: .bold, design: .default))
                            .lineSpacing(5.0)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .padding(.top, 30.0)
                        HStack {
                            Text("Listen more like XXX sound")
                                .font(.system(size: 25, weight: .bold, design: .default))
                                .lineSpacing(5.0)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .padding(15.0)
                            Spacer()
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: rows, spacing: 15.0) {
                                ForEach(MockData.wikis) { wiki in
                                    AnimalView(wiki: wiki)
                                }
                            }
                            .frame(height: 200, alignment: .top)
                            .padding(.leading, 15)
                            .padding(.trailing, 15)
                        }
                        Spacer()
                    }
                    .padding(.leading, 10)
                    Spacer()
                }
            }
            .navigationBarTitle("Wild Sounds", displayMode: .inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
