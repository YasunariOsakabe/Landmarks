//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/27.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark: Landmark
    
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            Spacer()
        }
    }
}

#Preview {
    //異なるViewを並べてPreviewしたい場合には、Groupを使用してまとめることも可能
    Group {
        LandmarkRow(landMark: landmarks[0])
        LandmarkRow(landMark: landmarks[1])
    }
}
