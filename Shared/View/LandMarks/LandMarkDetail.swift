//
//  LandMarkDetail.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/17.
//

import SwiftUI

struct LandMarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landMark: LandMark
    
    var landMarkIndex: Int {
        modelData.landMarks.firstIndex { lk in
            landMark.id == lk.id
        }!
    }
    
    var body: some View {
        VStack {
            MapView(coordinate: landMark.locationCoordinate)
                .frame(height: 300.0)
                .ignoresSafeArea()
            
            CircleImage(image: landMark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landMark.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    
                    FavoriteButton(isSet: $modelData.landMarks[landMarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landMark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landMark.state)
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("about \(landMark.name) rock")
                    .font(.title2)
                Text(landMark.description)
            }
            .padding()
            
            Spacer()
        }
        .navigationTitle(Text(landMark.name))
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landMark: ModelData().landMarks.first!)
    }
}
