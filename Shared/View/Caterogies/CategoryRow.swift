//
//  CategoryRow.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/18.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [LandMark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 5.0) {
                    ForEach(items) { landMark in
                        NavigationLink(destination: LandMarkDetail(landMark: landMark)) {
                            CategoryItem(landMark: landMark)
                        }
                    }
                }
            }
            .frame(height: 185)
            
            Spacer()
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landMarks = ModelData().landMarks
    
    static var previews: some View {
        CategoryRow(
            categoryName: landMarks[0].category.rawValue,
            items: Array(landMarks.prefix(4))
        )
    }
}
