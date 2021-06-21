//
//  LandMarkDetail.swift
//  WatchLandMarks Extension
//
//  Created by sama 刘 on 2021/6/21.
//

import SwiftUI

struct LandMarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landMark: LandMark
    
    var landMarkIndex: Int {
        modelData.landMarks.firstIndex(where: { $0.id == landMark.id })!
    }
    var body: some View {
        ScrollView {
            VStack {
                CircleImage(image: landMark.image.resizable())
                    .scaledToFit()
                
                Text(landMark.name)
                    .font(.headline)
                    .lineLimit(0)
                
                Toggle(isOn: $modelData.landMarks[landMarkIndex].isFavorite) {
                    Text("Favorite")
                }
                
                Divider()
                
                Text(landMark.park)
                    .font(.caption)
                    .bold()
                    .lineLimit(0)
                
                Text(landMark.state)
                    .font(.caption)
                
                Divider()
                
                MapView(coordinate: landMark.locationCoordinate)
                    .scaledToFit()
            }
            .padding(16)
        }
        .navigationTitle("LandMarks")
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        
        Group {
            LandMarkDetail(landMark: modelData.landMarks[0])
                .previewDevice("Apple Watch SE - 44mm")
                .environmentObject(modelData)
            LandMarkDetail(landMark: modelData.landMarks[0])
                .previewDevice("Apple Watch Series 5 - 40mm")
                .environmentObject(modelData)
        }
    }
}
