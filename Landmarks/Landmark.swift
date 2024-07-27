//
//  Landmark.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/27.
//

import Foundation

//Hashable - ハッシュ値の使用を可能にするプロトコル
struct Landmark: Codable, Hashable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
