//
//  LandMarkRow.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/17.
//

import Foundation
import SwiftUI

struct LandMarkRow: View {
    var landMark: LandMark
    
    var body: some View {
        HStack(alignment: .center){
            landMark.image
                .resizable()
                .frame(width: 50, height: 50, alignment: .leading)
            
            Text(landMark.name)
            
            Spacer()
        }
    }
    
}

struct LandMarkRow_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            LandMarkRow(landMark: landMarks.first!)
            
            LandMarkRow(landMark: landMarks.last!)
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
