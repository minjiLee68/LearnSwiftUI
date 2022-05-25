//
//  BannerCard.swift
//  LearnSwiftUI
//
//  Created by 이민지 on 2022/05/25.
//

import SwiftUI

struct BannerCard: View {
    
    var banner: AssetBanner
    
    var body: some View {
        ZStack {
            Color(banner.backgrounColor)
            VStack {
                Text(banner.title)
                    .font(.title)
                Text(banner.description)
                    .font(.subheadline)
            }
        }
//        Color(banner.backgrounColor)
//            .overlay(
//                VStack {
//                    Text(banner.title)
//                        .font(.title)
//                    Text(banner.description)
//                        .font(.subheadline)
//                }
//            )
    }
}

struct BannerCard_Previews: PreviewProvider {
    static var previews: some View {
        let banner0 = AssetBanner(title: "공지사항", description: "공지사항을 확인하세요", backgrounColor: .blue)
        
        BannerCard(banner: banner0)
    }
}
