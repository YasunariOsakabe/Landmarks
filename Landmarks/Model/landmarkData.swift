//
//  landmarkData.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/27.
//

import Foundation


var landmarks: [Landmark] = load("landmarkData.json")

//ジェネリクス型: TがDecodableに準拠していることを示している。
//引数で渡されるFileNameをアプリバンドル内に存在するか確認の後、存在する場合にはJSONデータを取得する。
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    //ファイル内に引数で指定したファイルが存在しているか確認
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        //ファイルをデコード
        //JSON形式のデータをSwift内で使用できる方へ変換
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
