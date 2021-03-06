//
//  HomeView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/11/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

@main
struct WildSoundsApp: App {
    
    let homeTitle = "Wild Sounds"
    
    var body: some Scene {
        WindowGroup {
            HomeView(navTitle: homeTitle)
        }
    }
}
