//
//  MapView.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/20.
//

import SwiftUI
import MapKit //地図を扱うためのフレームワーク

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    //マップの地域情報を保持するComputed Property
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }

}

#Preview {
    MapView()
}
