//
//  Header.swift
//  Instagram-app-clone
//
//  Created by Arlak Abdulloh on 10/4/2566 BE.
//

import SwiftUI

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

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
