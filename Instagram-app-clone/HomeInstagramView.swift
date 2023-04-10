//
//  HomeInstagram.swift
//  Instagram-app-clone
//
//  Created by Arlak Abdulloh on 8/4/2566 BE.
//

import SwiftUI

struct HomeInstagramView: View {
    var body: some View {
        VStack (spacing:0.0){
            Header()
          
            
            ScrollView(.vertical, showsIndicators: false){
                Stories()
                
                Divider()
                Post()
                Post(image: "nadia",name:"Napas Chaikaew",description:"Flawer")
            }
            TabBar()
           
        }
        
        
        
    }
}

struct HomeInstagramView_Previews: PreviewProvider {
    static var previews: some View {
        HomeInstagramView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("IGlogo")
            Spacer()
            HStack(spacing: 20.0) {
                Image("heartIcon")
                Image("messageIcon")
                Image("addIcon")
            }
        }
        .padding(.horizontal,15)
        .padding(.vertical,3)
    }
}

struct Story: View {
    
    var image: String = "profile"
    var name : String = "Arlak Abdulloh"
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange],
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing),
                            lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70,height: 70)
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack (spacing: 18.8){
                Story()
                Story(image:"profile",name:"nadia")
                Story(image:"nadia",name:"Napas Chaikaew")
                Story(image:"profile",name:"nadia3")
                Story(image:"profile",name:"nadia4")
                Story(image:"profile",name:"nadia5")
                Story(image:"profile",name:"nadia6")
                Story(image:"profile",name:"nadia7")
                
            }
            .padding(.horizontal,8)
        }
        .padding(.vertical,10)
    }
}

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

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0){
            Divider()
            HStack(spacing: 60) {
                Image("homeIcon")
                Image("searchIcon")
                Image("realIcon")
                Image("marketIcon")
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
            }
            .padding(.horizontal,25)
            .padding(.top,10)
        }
    }
}
