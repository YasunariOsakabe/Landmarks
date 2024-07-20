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
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                .foregroundColor(.black)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                    Spacer() //Spacerを入れるとTextが画面の左右両端に揃うようにスペースが入る
                    Text("California")
                        .font(.subheadline)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
