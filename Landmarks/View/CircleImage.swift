//
//  CircleImage.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/20.
//

import SwiftUI

struct CircleImage: View {
    //外部からデータソースを受け取るための変数を定義: 動的プログラムにするため
    var image: Image
    var body: some View {
        image
            .clipShape(Circle()) //円形のクリッピングシェイプを画像に
            .overlay(
                Circle().stroke(.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
}   

#Preview {
    CircleImage(image: Image("turtlerock"))
}
