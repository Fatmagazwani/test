//
//  Logo.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        VStack{
        
            Image("logo")
                .resizable(capInsets: EdgeInsets(top: 19.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .aspectRatio(contentMode: .fill)
                .foregroundColor(Color.orange)
                .frame(width: 400, height: /*@START_MENU_TOKEN@*/304.0/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
                //.padding()
           
        }
       
        
        
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
