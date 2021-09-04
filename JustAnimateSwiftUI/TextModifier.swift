//
//  TextModifier.swift
//  JustAnimateSwiftUI
//
//  Created by MANAS VIJAYWARGIYA on 20/07/21.
//

import SwiftUI

struct TextModifier: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .bold()
                .italic()
                .baselineOffset(10.0)
                .kerning(10)
                .underline(true, color: Color.green)
                .strikethrough()
                
                .padding()
            
            
        }
    }
}

struct TextModifier_Previews: PreviewProvider {
    static var previews: some View {
        TextModifier()
    }
}
