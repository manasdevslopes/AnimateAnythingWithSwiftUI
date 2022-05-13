//
//  RecordView.swift
//  JustAnimateSwiftUI
//
//  Created by MANAS VIJAYWARGIYA on 23/07/21.
//

import SwiftUI

struct RecordView: View {
    @Binding var degrees: Double
    @Binding var shouldAnimate: Bool
    
    var body: some View {
        Image("record")
            .resizable()
            .frame(width: 275, height: 275)
            .shadow(color: .gray, radius: 1, x: 0.0, y: 0.0)
            .rotationEffect(.degrees(degrees))
            .animation(Animation.linear(duration: shouldAnimate ? 241
                                        //60
                                        : 0).delay(1.5))
        
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView(degrees: .constant(2.0), shouldAnimate: .constant(true))
            .previewLayout(.sizeThatFits).padding()
    }
}
