//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/27.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            //動的にするために追加したプロパティを外部から受け取り
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            //動的にするために追加したプロパティを外部から受け取り
            CircleImage(image: landmark.image)
                .offset(y: -130) //y軸方向(垂直)に-130を指定 →130pt上に移動
                .padding(.bottom, -130) //下の余白を130pt縮小
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.black)
                    HStack {
                        Text(landmark.park)
                        Spacer() //Spacerを入れるとTextが画面の左右両端に揃うようにスペースが入る
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider() //区切り線を表示
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
            }
            .padding()
            
            Spacer() //上下両端いっぱいにView設定をするためにVStackに対してSpacerを設定
        }
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
