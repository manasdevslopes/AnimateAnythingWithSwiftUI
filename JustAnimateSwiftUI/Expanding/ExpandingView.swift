//
//  ExpandingView.swift
//  JustAnimateSwiftUI
//
//  Created by MANAS VIJAYWARGIYA on 04/09/21.
//

import SwiftUI

struct ExpandingView: View {
    @State var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            ZStack {
                ExpandingViewComponent(expand: $isAnimating, direction: .bottom, symbolName: "note.text")
                ExpandingViewComponent(expand: $isAnimating, direction: .left, symbolName: "doc")
                ExpandingViewComponent(expand: $isAnimating, direction: .top, symbolName: "photo")
                ExpandingViewComponent(expand: $isAnimating, direction: .right, symbolName: "mic.fill")
                
                Image(systemName: "plus").font(.system(size: 40, weight: isAnimating ? .regular : .semibold, design: .rounded))
                    .foregroundColor(isAnimating ? Color.white : Color.black)
                    .rotationEffect(isAnimating ? .degrees(45) : .degrees(0))
                    .scaleEffect(isAnimating ? 3 : 1)
                    .opacity(isAnimating ? 0.5 : 1)
                    .animation(Animation.spring(response: 0.35, dampingFraction: 0.85, blendDuration: 1))
                    .onTapGesture {
                        isAnimating .toggle()
                    }
            }
        }
    }
}

struct ExpandingView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandingView()
    }
}
