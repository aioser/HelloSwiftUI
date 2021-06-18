//
//  Profile.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/18.
//

import Foundation

struct Profile {
    var userName: String
    var prefersNotification = true
    var seasonalPhoto = Season.spring
    var goalDate = Date()
    
    static let `default` = Profile(userName: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌹"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "⛄️"
        
        var id: String { self.rawValue }
    }
}
