//
//  Addtocart.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct Addtocart: View {
    @State private var isADDTOCART = false
    var body: some View {
        
        ZStack{
            Button(action: {
                isADDTOCART = true
            }) {
                HStack (spacing: 6){
                    Text("ADD TO CART".uppercased())
                    
                    Image(systemName: "cart").resizable()
                        .frame(width: 32, height: 36)
                    
                }.frame(width: 200, height: 25)
                    .font(.headline)
                    .foregroundColor(Color("mywhite"))
                    .padding()
                
            }.background(Color("myblue"))
                .cornerRadius(31)
                .frame(maxWidth: .infinity)
        }
        
        .fullScreenCover(isPresented: $isADDTOCART) {
            Checkout()
        }
    }
    
    
    
    struct Addtocart_Previews: PreviewProvider {
        static var previews: some View {
            Addtocart()
        }
    }
}
