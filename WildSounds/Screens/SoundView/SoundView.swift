//
//  SoundView.swift
//  WildSounds
//
//  Created by Yu-Ting Tsao on 2/12/21.
//  Copyright © 2021 VTStudio. All rights reserved.
//

import SwiftUI
import AVKit

struct SoundView: View {
    
    @State var audioPlayer: AVAudioPlayer?
    
    let wiki: Wiki
    
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                Color("classic")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image(wiki.imageName)
                        .resizable()
                        .frame(height: 280)
                        .aspectRatio(contentMode: .fill)
                        .background(Color(white: 1.0, opacity: 0.3))
                    Spacer()
                }
                .padding(EdgeInsets(top: 30, leading: 60, bottom: 0, trailing: 60))
            }
            ZStack {
                Color("darkGray")
                    .edgesIgnoringSafeArea(.all)
                    .padding(0.0)
                VStack(spacing: 0.0) {
                    TitleView(title: wiki.name)
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            self.audioPlayer?.play()
                        }) {
                            Image(systemName: "play.circle.fill")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Button(action: {
                            self.audioPlayer?.pause()
                        }) {
                            Image(systemName: "pause.circle.fill").resizable()
                                .frame(width: 100, height: 100)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: wiki.imageName, ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
    }
}

struct SoundView_Previews: PreviewProvider {
    static var previews: some View {
        SoundView(wiki: MockData.wikis[1])
    }
}
