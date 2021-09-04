//
//  PlaySound.swift
//  JustAnimateSwiftUI
//
//  Created by MANAS VIJAYWARGIYA on 23/07/21.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Couldn't find the file")
        }
    }
}
