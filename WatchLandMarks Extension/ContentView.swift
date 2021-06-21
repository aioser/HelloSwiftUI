//
//  ContentView.swift
//  WatchLandMarks Extension
//
//  Created by sama 刘 on 2021/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandMarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
