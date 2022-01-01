//
//  BlendingModesView.swift
//  Drawing
//
//  Created by Peter Molnar on 01/01/2022.
//

import SwiftUI

struct BlendingModesView: View {
    var body: some View {
            Image("Example")
                .colorMultiply(.red)
            
//            Rectangle()
//                .fill(.red)
//                .blendMode(.multiply)

    }
}

struct BlendingModesView_Previews: PreviewProvider {
    static var previews: some View {
        BlendingModesView()
    }
}
