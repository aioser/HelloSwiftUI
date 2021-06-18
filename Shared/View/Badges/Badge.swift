//
//  Badge.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/17.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 16
    
    var badgeSymbols: some View {
        ForEach(0..<Self.rotationCount) { i in
            RotedBadgeSymbol(
                angle: .degrees(Double(i) / Double(Self.rotationCount)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0/4, anchor: .top)
                    .position(x: geometry.size.width / 2, y: 3.0 / 4 * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
