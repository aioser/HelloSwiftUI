//
//  RotedBadgeSymbol.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/17.
//

import SwiftUI

struct RotedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
