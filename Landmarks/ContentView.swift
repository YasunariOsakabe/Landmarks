//
//  ContentView.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130) //y軸方向(垂直)に-130を指定 →130pt上に移動
                .padding(.bottom, -130) //下の余白を130pt縮小
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    .foregroundColor(.black)
                    HStack {
                        Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
                        Spacer() //Spacerを入れるとTextが画面の左右両端に揃うようにスペースが入る
                        Text("California")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider() //区切り線を表示
                    
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here.")
                }
            }
            .padding()
            
            Spacer() //上下両端いっぱいにView設定をするためにVStackに対してSpacerを設定
        }
    }
}

#Preview {
    ContentView()
}
