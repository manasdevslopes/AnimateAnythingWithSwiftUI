//
//  RecordPlayerBox.swift
//  JustAnimateSwiftUI
//
//  Created by MANAS VIJAYWARGIYA on 23/07/21.
//

import SwiftUI

struct RecordPlayerBox: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 345, height: 345)
                .cornerRadius(10)
            Image("woodGrain")
                .resizable()
                .frame(width: 325, height: 325)
                .shadow(color: .white, radius: 3, x: 0.0, y: 0.0)
                
        }
    }
}

struct RecordPlayerBox_Previews: PreviewProvider {
    static var previews: some View {
        RecordPlayerBox()
    }
}
