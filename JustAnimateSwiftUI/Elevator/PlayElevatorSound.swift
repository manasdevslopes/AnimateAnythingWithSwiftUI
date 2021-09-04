//
//  PlayElevatorSound.swift
//  JustAnimateSwiftUI
//
//  Created by MANAS VIJAYWARGIYA on 08/08/21.
//

import Foundation
import AVFoundation

var elevatorAudioPlayer: AVAudioPlayer?

func playElevatorSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            elevatorAudioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            elevatorAudioPlayer?.play()
        } catch {
            print("ERROR: Could not find and play the sound file!")
        }
    }
}

