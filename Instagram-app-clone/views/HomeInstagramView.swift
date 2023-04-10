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
//            TabBar()
           
        }
        
        
        
    }
}

struct HomeInstagramView_Previews: PreviewProvider {
    static var previews: some View {
        HomeInstagramView()
    }
}


