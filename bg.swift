//
//  bg.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct bg: View {
    var body: some View {
        Image("bg")
        .resizable()
        .foregroundColor(Color("mywhite"))
        .scaledToFill()
        .aspectRatio(contentMode: .fill)
        //.edgesIgnoringSafeArea(.all)
        .frame(width: 250,height: 800,alignment: .center)
        .opacity(1.0)
    }
}

struct bg_Previews: PreviewProvider {
    static var previews: some View {
        bg()
    }
}
