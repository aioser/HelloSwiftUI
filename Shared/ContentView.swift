//
//  ContentView.swift
//  Shared
//
//  Created by sama 刘 on 2021/6/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300.0)
                .ignoresSafeArea()
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("turtle rock")
                    .font(.title)
                
                HStack {
                    Text("joshua tree national park")
                        .font(.subheadline)
                    Spacer()
                    Text("california")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("about turtle rock")
                    .font(.title2)
                Text("description text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
