//
//  AssetBannerView.swift
//  LearnSwiftUI
//
//  Created by 이민지 on 2022/05/25.
//

import SwiftUI

struct AssetBannerView: View {
    let bannerList: [AssetBanner] = [
        AssetBanner(title: "공지사항", description: "공지사항을 확인하세요.", backgrounColor: .red),
        AssetBanner(title: "주말 이벤트", description: "주말 이벤트를 확인하세요.", backgrounColor: .yellow),
        AssetBanner(title: "깜짝 이벤트", description: "깜짝 이벤트를 확인하세요.", backgrounColor: .blue),
        AssetBanner(title: "여름 프로모션", description: "여름...", backgrounColor: .white)
    ]
    
    @State private var currentPage: Int = 0
    
    var body: some View {
        let bannerCard = bannerList.map { BannerCard(banner: $0) }
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(page: bannerCard, currentPage: $currentPage)
            PageController(numberOfpages: bannerList.count, currentPage: $currentPage)
                .frame(width: CGFloat(bannerCard.count * 18))
                .padding(.trailing)
        }
    }
}

struct AssetBannerView_Previews: PreviewProvider {
    static var previews: some View {
        AssetBannerView()
            .aspectRatio(5/2, contentMode: .fit)
    }
}
