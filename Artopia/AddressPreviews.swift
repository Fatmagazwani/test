//
//  AddressPreviews.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct AddressPreviews: View {
    @State private var isGoHome = false
    
    var body: some View {
        
        ZStack{
            bg()
            
            VStack{
                Text("Your location has been saved")
                    .font(.title)
                    .fontWeight(.thin)
                
                Button {
                    isGoHome = true }
            label: {
                Text("Go Back").foregroundColor(Color("myblue")).bold().font(.title)
            }
                
                
            .fullScreenCover(isPresented: $isGoHome)
                {BuyerSettings()}
                
            }
        }
    }
}

struct AddressPreviews_Previews: PreviewProvider {
    static var previews: some View {
        AddressPreviews()
    }
}
