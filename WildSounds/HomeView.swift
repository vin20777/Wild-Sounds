//
//  HomeView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/11/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
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
                        ScrollView(.horizontal) {
                            LazyHGrid(rows: rows) {
                                Text("PICTURE1")
                                    .font(.title)
                                    .foregroundColor(.white)
                                Text("PICTURE2")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Text("PICTURE3")
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                Text("PICTURE4")
                                    .font(.body)
                                    .foregroundColor(.white)
                                Text("PICTURE5")
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                            }
                            .frame(height: 160, alignment: .top)
                            .padding(.leading, 15)
                            .padding(.trailing, 15)
                            Spacer()
                        }
                        Spacer()
                    }
                    .padding(.leading, 10)
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
