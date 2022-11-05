//
//  ArtistSettings.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct ArtistSettings: View {
    @State private var isFullScreen = false
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
            VStack(alignment: .leading, spacing: 20.0){
                
                Text("Hello Artist")
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(Color("myblue"))
                    .padding(.bottom)
                    .padding(.trailing, 170)
                    .padding(.bottom, 550)
            }
            VStack(alignment: .leading, spacing: 15.0){
                

                
                
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
            .padding(.bottom, 320)
        }
        
        .fullScreenCover(isPresented: $isFullScreen){PrivacyPolicy()
        }
        .fullScreenCover(isPresented: $isLogOut){LogOut()
        }
        .fullScreenCover(isPresented: $isContact){ContactUs()
            
        }
        
    }
    
    struct ArtistSettings_Previews: PreviewProvider {
        static var previews: some View {
            ArtistSettings()
        }
    }
}
