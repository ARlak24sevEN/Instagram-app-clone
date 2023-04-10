//
//  Stories.swift
//  Instagram-app-clone
//
//  Created by Arlak Abdulloh on 10/4/2566 BE.
//

import SwiftUI

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack (spacing: 18.8){
                Story()
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

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories()
    }
}
