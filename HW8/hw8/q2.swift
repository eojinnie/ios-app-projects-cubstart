//
//  q2.swift
//  hw8
//
//  Created by Andy Huang on 3/31/23.
//

import SwiftUI

struct q2: View {
    // x offset of the square
    @State var offset_x: CGFloat = 90.0
    // y offset of the square
    @State var offset_y: CGFloat = 300.0
    // rotation of the square
    @State var rotation: CGFloat = 0.0
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.orange)
                .frame(width: 150, height: 150)
                .rotationEffect(Angle(degrees: rotation))
                .offset(x: offset_x, y: offset_y)
                .onTapGesture {
                    
                    // Moves square from bottom-right -> bottom-left
                    withAnimation(.linear(duration: 0.5).delay(0.0)) {
                        offset_x = -90.0
                        rotation += 180.0
                    }
                    
                    // TODO: Implement the three other explicit animations below.
                    withAnimation(.linear(duration: 0.5).delay(0.5)) {
                        offset_y = -300.0
                        rotation += 180.0
                    }
                    withAnimation(.linear(duration: 0.5).delay(1.0)) {
                        offset_x = 90.0
                        rotation += 180.0
                    }
                    withAnimation(.linear(duration: 0.5).delay(1.5)) {
                        offset_y = 300.0
                        rotation += 180.0
                    }
                }
        }
    }
}

struct q2_Previews: PreviewProvider {
    static var previews: some View {
        q2()
    }
}
