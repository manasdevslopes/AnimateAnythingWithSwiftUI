//
//  PLayWavesSound.swift
//  JustAnimateSwiftUI
//
//  Created by MANAS VIJAYWARGIYA on 02/09/21.
//

import Foundation
import AVFoundation

var wavesAudioPlayer: AVAudioPlayer?

func playWavesSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            wavesAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            wavesAudioPlayer?.play()
        } catch {
            print("Could not find and play the sound file")
        }
    }
}


