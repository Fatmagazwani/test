//
//  Checkout.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct Checkout: View {
    @State private var isCheckout = false
    @State private var isContinue = false
    var body: some View {
        ZStack{
            
            PaintingDescription()
                .blur(radius: 2.2)
            ZStack{
                
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color("mywhite"))
                    .frame(width: 380, height: 230)
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color("mypurple"), lineWidth: 4)
                        
                    ) .padding(.bottom, 10)
                VStack(alignment: .center){
                    Text("Will You Stay?").fontWeight(.heavy).font(.title2).foregroundColor(Color("myblue"))
                        .padding(.trailing,200)
                        .padding()
                    
                    HStack(alignment: .center){
                        Text("Your Item is add to the cart")
                            .foregroundColor(Color("mydarkgray"))
                        Spacer()
                        VStack{
                            Text("Cart Total")
                                .foregroundColor(Color("mydarkgray"))
                            
                            Text("250 SAR")
                                .foregroundColor(Color("mydarkgray"))
                            
                        }
                        .padding(.top,10)
                    }
                    .padding(.horizontal)
                    
                    
                    
                    
                    
                    HStack(alignment:.center){
                        Button(action: {
                            isCheckout = true
                        }, label: {
                            Text("Checkout")
                                .frame(width: 170, height: 40)
                                .background(Color("myblue").cornerRadius(31))
                                .foregroundColor(Color("mywhite"))
                                .font(.headline)
                        })
                        Button(action: {
                            isContinue = true
                        }, label: {
                            Text("Continue shopping")
                                .frame(width: 170, height: 40)
                            
                                .background(Color("mywhite").cornerRadius(31))
                                .foregroundColor(Color("myblue"))
                            
                                .font(.headline)
                        })
                        
                        .overlay(
                            RoundedRectangle(cornerRadius:31 )
                                .stroke(Color("myblue"), lineWidth: 2))
                    }
                    
                }
                
            }
            .fullScreenCover(isPresented: $isCheckout) {
                Cart()}
                    .fullScreenCover(isPresented: $isContinue) {
                        PaintingDescription()
                    }
            }
        }}
struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout()
    }
}

