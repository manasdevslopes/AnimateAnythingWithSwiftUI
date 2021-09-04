//
//  ExpandingViewComponent.swift
//  JustAnimateSwiftUI
//
//  Created by MANAS VIJAYWARGIYA on 04/09/21.
//

import SwiftUI

enum ExpandDirection {
    case bottom
    case left
    case right
    case top
    
    var offsets: (CGFloat, CGFloat) {
        switch self {
        case .bottom:
            return (32, 62)
        case .left:
            return (-62, 32)
        case .top:
            return (-32, -62)
        case .right:
            return (62, -32)
        }
    }
    var containerOffset: (CGFloat, CGFloat) {
        switch self {
        case .bottom:
            return (18, 18)
        case .left:
            return (-18, 18)
        case .top:
            return (-18, -18)
        case .right:
            return (18, -18)
        }
    }
}

struct ExpandingViewComponent: View {
    @Binding var expand: Bool
    var direction: ExpandDirection
    var symbolName: String
    
    var body: some View {
        ZStack {            
            ZStack {
                Image(systemName: symbolName)
                    .font(.system(size: 32, weight: .medium, design: .rounded))
                    .foregroundColor(Color.black).padding()
                    .scaleEffect(expand ? 1 : 0)
                    .rotationEffect(expand ? .degrees(-43) : .degrees(0))
                    .animation(.easeOut(duration: 0.15))
            }
            .frame(width: 82, height: 82)
            .background(Color.white)
            .cornerRadius(expand ? 41 : 8)
            .scaleEffect(expand ? 1 : 0.5)
            .offset(x: expand ? direction.offsets.0 : 0, y: expand ? direction.offsets.1 : 0)
            .rotationEffect(expand ? .degrees(43) : .degrees(0))
            .animation(Animation.easeOut(duration: 0.25).delay(0.05))
        }.offset(x: direction.containerOffset.0, y: direction.containerOffset.1)
    }
}

struct ExpandingViewComponent_Previews: PreviewProvider {
    static var previews: some View {
        ExpandingViewComponent(expand: .constant(true), direction: .bottom, symbolName: "doc.fill")
    }
}
