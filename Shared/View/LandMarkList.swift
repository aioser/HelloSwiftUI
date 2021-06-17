//
//  LandMarkList.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/17.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationView {
            List(landMarks, id: \.id) { landMark in
                NavigationLink(destination: LandMarkDetail(landMark: landMark)) {
                    LandMarkRow(landMark: landMark)
                }
            }
            .navigationTitle(Text("LandMarks"))
            
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
    }
}
