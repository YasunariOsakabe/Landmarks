//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 小坂部泰成 on 2024/07/27.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //id: \.id = id: KeyPath<Data.Element, ID
        //「\」自体は、KeyPath構文の一部であり、この場合はListビューに渡される各要素のidプロパティににアクセスをしている
        //landmarks 配列の各要素に順番にアクセスし、各要素を一意に識別するために id プロパティを使用して、それぞれの要素を LandmarkRow ビューに渡して表示する処理です。
        List(landmarks, id: \.id) { landmark in
            LandmarkRow(landMark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
