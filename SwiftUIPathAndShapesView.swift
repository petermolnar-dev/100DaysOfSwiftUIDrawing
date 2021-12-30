//
//  SwiftUIPathAndShapesView.swift
//  Drawing
//
//  Created by Peter Molnar on 15/12/2021.
//

import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxX))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct Arc: InsettableShape {

    var startAngle: Angle
    var endAngle: Angle
    var clockWise: Bool
    
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        
        // Starting 0 degree in SwiftUI is at the right side of the screen ,so we need an alignment to put 0 in the top
        let rotationAdjust = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjust
        let modifiedEnd = endAngle - rotationAdjust
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockWise)
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct SwiftUIPathAndShapesView: View {
    var body: some View {
//        Triangle()
//            .stroke(.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//            .frame(width: 300, height: 300)
        Arc(startAngle: .degrees(0), endAngle: .degrees(110), clockWise: true)
            .stroke(.blue, lineWidth: 10)
            .frame(width: 300, height: 300)
    }
}

struct SwiftUIPathAndShapesView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIPathAndShapesView()
    }
}
