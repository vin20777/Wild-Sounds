//
//  Wiki.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/13/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import Foundation

struct Wiki: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let habit: String
    let requiredMember: Bool
    
    init(_ name: String, _ imageName: String, _ habit: String, _ requiredMember: Bool = false) {
        self.name = name
        self.imageName = imageName
        self.habit = habit
        self.requiredMember = requiredMember
    }
}
