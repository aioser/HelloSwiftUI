//
//  HelloSwiftUIApp.swift
//  Shared
//
//  Created by sama 刘 on 2021/6/16.
//

import SwiftUI

@main
struct HelloSwiftUIApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
