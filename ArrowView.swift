//
//  ArrowView.swift
//  Drawing
//
//  Created by Peter Molnar on 02/01/2022.
//

import SwiftUI

struct Arrow: InsettableShape {
    
    var animatableData: Double {
        get { insetAmount }
        set { insetAmount = newValue }
    }
    
    var insetAmount = 0.0
    var lineSize: Double
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY + insetAmount))
        path.addLine(to: CGPoint(x: 2 * rect.maxX / 8, y: rect.midY))
        path.addLine(to: CGPoint(x: 3 * rect.maxX / 8, y: rect.midY))
        path.addLine(to: CGPoint(x: 3 * rect.maxX / 8, y: rect.maxY - insetAmount))
        path.addLine(to: CGPoint(x: 5 * rect.maxX / 8, y: rect.maxY - insetAmount))
        path.addLine(to: CGPoint(x: 5 * rect.maxX / 8, y: rect.midY))
        path.addLine(to: CGPoint(x: 6 * rect.maxX / 8, y: rect.midY))
        path.closeSubpath()
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arrow = self
        arrow.insetAmount += amount
        return arrow
    }
}

struct ArrowView: View {
    @State private var lineWidth: Double = 1.0
    
    var body: some View {
        VStack {
            Arrow(lineSize: 1.0)
                .strokeBorder(.blue, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round))
                .onTapGesture {
                    withAnimation {
                        if lineWidth < 20 {
                            lineWidth = 20
                        } else {
                            lineWidth = 1
                        }
                    }
                }
            
        }
        .frame(width: 200, height: 200)
        .background(.orange)
    }
}

struct ArrowView_Previews: PreviewProvider {
    static var previews: some View {
        ArrowView()
    }
}
