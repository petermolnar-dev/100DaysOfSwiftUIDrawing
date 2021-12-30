//
//  SwiftUIPathView.swift
//  Drawing
//
//  Created by Peter Molnar on 14/12/2021.
//

import SwiftUI

struct SwiftUIPathView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
           // path.closeSubpath()
        }
       // .fill(.blue)
        .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct SwiftUIPathView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPathView()
    }
}
