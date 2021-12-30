//
//  CreativeBoredersView.swift
//  Drawing
//
//  Created by Peter Molnar on 30/12/2021.
//

import SwiftUI

struct CreativeBoredersView: View {
    var body: some View {
        VStack {
            Text("Hello world")
                .frame(width: 300, height: 100)
                .background(.red)
            
            
            Text("Hello world")
                .frame(width: 300, height: 100)
                .border(.red, width: 30)
            
            Text("Hello world")
                .frame(width: 300, height: 100)
                .background(Image("Example"))
            
            Text("Hello world")
                .frame(width: 300, height: 100)
                .border(ImagePaint(image:Image("Example"), scale: 0.1), width: 13)
            
            Text("Hello world")
                .frame(width: 300, height: 100)
                .border(ImagePaint(image:Image("Example"), sourceRect: CGRect(x:0, y: 0.25, width: 1, height: 0.5), scale: 0.1), width: 13)
            Capsule()
                .strokeBorder(ImagePaint(image: Image("Example"), scale: 0.1), lineWidth: 20)
                .frame(width: 300, height: 200)
        }
    }
}

struct CreativeBoredersView_Previews: PreviewProvider {
    static var previews: some View {
        CreativeBoredersView()
    }
}
