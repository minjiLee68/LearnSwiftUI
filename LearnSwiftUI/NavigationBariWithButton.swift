//
//  NavigationBariWithButton.swift
//  LearnSwiftUI
//
//  Created by 이민지 on 2022/05/23.
//

import SwiftUI

struct NavigationBariWithButton: ViewModifier {
    var title: String = ""
    
    func body(content: Content) -> some View {
        return content
            .navigationBarItems(
                leading: Text(title)
                    .font(.system(size: 24, weight: .bold))
                    .padding(),
                trailing: Button(action: {
                    print("자산 추가 버튼 클릭")
                }, label: {
                    Image(systemName: "plus")
                    Text("자산추가")
                        .font(.system(size: 12))
                })
                .tint(.black)
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black)
                )
            )
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                let appearance = UINavigationBarAppearance()
                appearance.configureWithTransparentBackground()
                appearance.backgroundColor = UIColor(white: 1, alpha: 0.5)
                UINavigationBar.appearance().standardAppearance = appearance
                UINavigationBar.appearance().compactAppearance = appearance
                UINavigationBar.appearance().scrollEdgeAppearance = appearance
            }
    }
}

extension View {
    func NavigationBarWithButtonStyle(_ title: String) -> some View {
        return self.modifier(NavigationBariWithButton(title: title))
    }
}

struct NavigationBariWithButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Color.gray
                .edgesIgnoringSafeArea(.all)
                .NavigationBarWithButtonStyle("내 자산")
        }
    }
}
