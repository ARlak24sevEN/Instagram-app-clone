//
//  Post.swift
//  Instagram-app-clone
//
//  Created by Arlak Abdulloh on 10/4/2566 BE.
//

import SwiftUI

struct Post: View {
    
    var image: String = "profile"
    var name: String = "arlak"
    var description: String = "Congraruade"
    
    var body: some View {
        VStack (alignment: .leading,spacing: 0){
            PostHeader(image: image, name: name)
            
            PostContent(image: image)
            
            Text("Liked by Nadia2 and others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            HStack {
                Image("profile")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .cornerRadius(50)
                
                Text("Add comment...")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Spacer()
                HStack{
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}
