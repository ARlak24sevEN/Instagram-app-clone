//
//  PostContent.swift
//  Instagram-app-clone
//
//  Created by Arlak Abdulloh on 10/4/2566 BE.
//

import SwiftUI

struct PostContent: View {
    var image: String = "profile"
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            HStack {
                HStack(spacing:16.50) {
                    Image("heartIcon")
                    Image("commentIcon")
                    Image("shareIcon")
                }
                Spacer()
                
                Image("bookmarkIcon")
            }
            .padding(.vertical, 9)
            .padding(.horizontal, 12)
        }
    }
}

struct PostContent_Previews: PreviewProvider {
    static var previews: some View {
        PostContent()
    }
}
