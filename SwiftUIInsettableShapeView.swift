//
//  SwiftUIInsettableShapeView.swift
//  Drawing
//
//  Created by Peter Molnar on 15/12/2021.
//

import SwiftUI

struct SwiftUIInsettableShapeView: View {
    var body: some View {
        // With default, the shape stroke line is drawn to the middle of the shape line.
        Circle()
            .strokeBorder(.blue, lineWidth: 40)
        Arc(startAngle: .degrees(-90), endAngle: .degrees(90), clockWise: true)
            .strokeBorder(.blue, lineWidth: 40)

    }
}

struct SwiftUIInsettableShapeView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIInsettableShapeView()
    }
}
