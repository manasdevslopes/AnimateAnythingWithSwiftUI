  //
  //  RecordPlayer.swift
  //  JustAnimateSwiftUI
  //
  //  Created by MANAS VIJAYWARGIYA on 23/07/21.
  //

import SwiftUI

struct RecordPlayer: View {
  @State private var rotateRecord = false
  @State private var rotateArm = false
  @State private var shouldAnimate = false
  @State private var degrees = 0.0
  
  var body: some View {
    ZStack {
      RadialGradient(gradient: Gradient(colors: [.black, .pink]), center: .center, startRadius: 20, endRadius: 600)
        .scaleEffect(1.2)
      
      RecordPlayerBox()
        .offset(y: -140)
      
      VStack {
        RecordView(degrees: $degrees, shouldAnimate: $shouldAnimate)
          .offset(y: -50)
        ArmView(rotateArm: $rotateArm)
          .offset(y: -70)
        
        Button(action: {
          shouldAnimate.toggle()
          if shouldAnimate {
            degrees = 83000
            rotateArm.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
              playSound(sound: "Dil_Tujhko_Chahe", type: "mp3")
            }
            
          } else{
            rotateArm.toggle()
            degrees = 0
            audioPlayer?.stop()
          }
        }) {
          HStack(spacing: 8) {
            if !shouldAnimate {
              Text("Play")
              Image(systemName: "play.circle.fill")
                .imageScale(.large)
            } else {
              Text("Stop")
              Image(systemName: "stop.fill")
                .imageScale(.large)
            }
          }
          .padding(.horizontal, 16)
          .padding(.vertical, 10)
          .background(Capsule().strokeBorder(Color.pink, lineWidth: 1.25))
        }
        .offset(y: -140)
        
      }
      Image("DilTujhkoChahe")
        .resizable()
        .frame(maxWidth: .infinity)
        .frame(height: 310)
        .offset(y: 300)
        .ignoresSafeArea()
    }
  }
}

struct RecordPlayer_Previews: PreviewProvider {
  static var previews: some View {
    RecordPlayer()
  }
}
