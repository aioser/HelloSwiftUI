//
//  LandMarkList.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/17.
//

import SwiftUI

struct LandMarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filterdLandMarks: [LandMark] {
        modelData.landMarks.filter { landMark in
            !showFavoritesOnly || landMark.isFavorite
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites obly")
                }
                
                ForEach(filterdLandMarks) { landMark in
                    NavigationLink(destination: LandMarkDetail(landMark: landMark)) {
                        LandMarkRow(landMark: landMark)
                    }
                }
            }
            .navigationTitle(Text("LandMarks"))
            
        }
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkList()
            .environmentObject(ModelData())
    }
}
