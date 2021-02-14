//
//  HomeViewModel.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/13/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    
    @Published var hasPremiumMembership = false
    
    let mockData = MockData.wikis
    var welcomeText: String {
        hasPremiumMembership ? "Good afternoon, USER.\nYou have 1 credit to spend.": "Join premium by pressing the button at the bottom."
    }
}
