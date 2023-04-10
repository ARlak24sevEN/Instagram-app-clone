//
//  Tab.swift
//  Instagram-app-clone
//
//  Created by Arlak Abdulloh on 10/4/2566 BE.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0){
            TabView {
                HomeInstagramView()
                    .tabItem{
                        Image("homeIcon")
                    }
                Image("searchIcon")
                    .tabItem{
                        Image("searchIcon")
                    }
                Image("realIcon")
                    .tabItem{
                        Image("realIcon")
                    }
                Image("marketIcon")
                    .tabItem{
                        Image("marketIcon")
                    }
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
                    .tabItem{
//                        Image("marketIcon")
                        Image("avatarIcon")
                    }
            }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
