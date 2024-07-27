//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/27.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landMark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
