//
//  Landmark.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/27.
//

import Foundation
import SwiftUI
import CoreLocation //MapKitとのやりとりに役立つ

//Hashable - ハッシュ値の使用を可能にするプロトコル
struct Landmark: Codable, Hashable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    //Assetsから画像を読み込む計算型プロパティを定義
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    //ランドマークの場所に関する情報を管理
    //coordinates - 座標
    private var coordinates: Coordinates
    
    //MapKit定義時に役立つlocationCoordinateを定義
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double //緯度
        var longitude: Double //経度
    }
}
