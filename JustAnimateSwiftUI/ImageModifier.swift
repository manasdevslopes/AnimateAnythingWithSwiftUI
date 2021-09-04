//
//  Image.swift
//  JustAnimateSwiftUI
//
//  Created by MANAS VIJAYWARGIYA on 20/07/21.
//

import SwiftUI

struct ImageModifier: View {
    @State private var img: UIImage! = nil
    let staticImage = UIImage(named: "iWriteCode")
    
    var body: some View {
        Image(uiImage: self.img ?? staticImage!)
            .resizable()
            .onAppear(perform: imageDownloader)
            .frame(width: CGFloat(400),height: CGFloat(400), alignment: .center )
            .onTapGesture {
                print("Run more codes here")
            }
        
    }
    
    func imageDownloader() {
        guard let imgUrl = URL(string: "https://picsum.photos/400/400?i=30") else {
            print("Could not find images at this url")
            return
        }
        URLSession.shared.dataTask(with: imgUrl) { (data, response, error) in
            if let imageData = data, let imageToDisplay = UIImage(data: imageData) {
                self.img = imageToDisplay
            } else {
                print("error ", error?.localizedDescription ?? "")
            }
        }.resume()
    }
}

struct ImageModifier_Previews: PreviewProvider {
    static var previews: some View {
        ImageModifier()
    }
}
