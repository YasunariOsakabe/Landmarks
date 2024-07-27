//
//  CircleImage.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/20.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image(/*@START_MENU_TOKEN@*/"turtlerock"/*@END_MENU_TOKEN@*/)
            .clipShape(Circle()) //円形のクリッピングシェイプを画像に
            .overlay(
                Circle().stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}   

#Preview {
    CircleImage()
}
