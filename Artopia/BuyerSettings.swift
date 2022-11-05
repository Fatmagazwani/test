//
//  BuyerSettings.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct BuyerSettings: View {
    
    @State private var isFullScreen = false
    @State private var islocation = false
    @State private var isBuyerOrders = false
    @State private var isLogOut = false
    @State private var isContact = false



  
    var body: some View {
        
        
        ZStack {
            
            
            Image("bg")
                .resizable()
                .foregroundColor(Color("mywhite"))
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 800, alignment: .center)
                .opacity(1.0)
            
            VStack(){
                BackButton()
                    .padding(.trailing,310)
                    .padding(.bottom,715)
            }
            
           
            
            VStack{
                Text("Settings")
                    .font(.title)
                    .foregroundColor(Color("mydarkgray"))
                
                Text("Manage Your Settings")
                    .font(.caption)
                    .foregroundColor(Color("mydarkgray"))
                Rectangle()
                    .frame(width: 300, height: 2.0)
                    .foregroundColor(Color("mygray"))
                    .padding(.bottom, 700)
                
            }
            VStack(alignment: .leading){
                
                Text("Hello Buyer")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color("myblue"))
                    .padding(.bottom)
                    .padding(.trailing, 170)
                    .padding(.bottom, 550)
            }
            .padding()
            
            VStack(alignment: .leading, spacing: 15.0){
                
                Button(action: {isBuyerOrders = true}
                       , label:{
                    Text( "Orders")
                        .font(.title2)
                        .foregroundColor(Color("myblue"))
                })
                
                
                Button(action: {islocation = true}
                       , label:{
                    Text( "Address")
                        .font(.title2)
                        .foregroundColor(Color("myblue"))
                })
                
                
                Button(action: {isFullScreen = true}
                       , label:{
                    Text( "PrivacyPolicy")
                        .font(.title2)
                        .foregroundColor(Color("myblue"))
                })
                
                Button(action: {isLogOut = true}
                       , label:{
                    Text( "Log Out")
                        .font(.title2)
                        .foregroundColor(Color("myblue"))
                })
                
                Button(action: {isContact = true}
                       , label:{
                    Text( "Contact Us")
                        .font(.title2)
                        .foregroundColor(Color("myblue"))
                })
                
                
                
                
                
            }
            .padding(.trailing, 165.0)
            .padding(.bottom, 220)
        }
        
        .fullScreenCover(isPresented: $isFullScreen){PrivacyPolicy()
        }
        .fullScreenCover(isPresented: $islocation){Address()
        }
        .fullScreenCover(isPresented: $isBuyerOrders){BuyerOrders()
        }
        .fullScreenCover(isPresented: $isLogOut){LogOutForBuyer()
        }
        .fullScreenCover(isPresented: $isContact){ContactUs()
            
        }
        
    }
    struct BuyerSettings_Previews: PreviewProvider {
        static var previews: some View {
            BuyerSettings()
        }
    }
    
}
