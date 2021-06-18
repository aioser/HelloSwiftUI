//
//  FeatureCard.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/18.
//

import SwiftUI

struct FeatureCard: View {
    var landMark: LandMark
    
    var body: some View {
        landMark.featrueImage?
            .resizable()
            .aspectRatio(3/2, contentMode: .fit)
            .overlay(TextOverlay(landMark: landMark))
    }
}

struct TextOverlay: View {
    var landMark: LandMark
    
    var gradient: LinearGradient {
        LinearGradient(
            gradient: Gradient(
                colors: [
                    Color.black.opacity(0.8),
                    Color.black.opacity(0)
                ]
            ),
            startPoint: .bottom,
            endPoint: .center
        )
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle()
                .fill(gradient)
            VStack(alignment: .leading) {
                Text(landMark.name)
                    .font(.title)
                    .bold()
                Text(landMark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landMark: ModelData().features[0])
    }
}
