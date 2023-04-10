//
//  PostHeader.swift
//  Instagram-app-clone
//
//  Created by Arlak Abdulloh on 10/4/2566 BE.
//

import SwiftUI

struct PostHeader: View {
    var image: String = "profile"
    var name: String = "Arlak Abdulloh"
    var body: some View {
        HStack{
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Text(name)
                    .font(.caption)
                    .bold()
                //                        .fontWeight(.bold)
            }
            Spacer()
            
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostHeader()
    }
}
