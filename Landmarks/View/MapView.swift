//
//  MapView.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/20.
//

import SwiftUI
import MapKit //地図を扱うためのフレームワーク

struct MapView: View {
    //外部からデータソースを受け取るための変数を定義: 動的プログラムにするため
    var coordinate: CLLocationCoordinate2D

    var body: some View {
        Map(position: .constant(.region(region)))
    }
    //マップの地域情報を保持するComputed Property
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }

}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
