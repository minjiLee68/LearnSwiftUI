//
//  AssetView.swift
//  LearnSwiftUI
//
//  Created by 이민지 on 2022/05/25.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    Spacer()
                    AssetMenuGridView()
                }
            }
            .background(Color.gray.opacity(0.2))
            .NavigationBarWithButtonStyle("내 자산")
        }
    }
}

struct AssetView_Previews: PreviewProvider {
    static var previews: some View {
        AssetView()
    }
}
