//
//  LogOut.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct LogOut: View {
    @State private var isCancel2 = false
    @State private var isLonout2 = false
    var body: some View {
        ZStack{
            
            
            ArtistSettings()
                .blur(radius: 2.2)
            
            ZStack{
                
                
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("mywhite"))
                    .frame(width: 360, height: 260)
                
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color("mypurple"), lineWidth: 3)
                        
                    ) .padding(.bottom, 45)
                
            }
            
            VStack(alignment:.center ) {
                Text("Log out for ( Nadeen.1)")
                    .font(.title)
                    .foregroundColor(Color("myblue"))
                
                
                
                Button(action: {
                    isLonout2 = true
                }, label: {
                    Text("Logout".uppercased())
                        .padding()
                        .frame(width: 170, height: 40)
                        .background(Color("myblue").cornerRadius(31))
                        .foregroundColor(Color("mywhite"))
                        .font(.headline)
                })
                .overlay(
                    RoundedRectangle(cornerRadius:31 )
                        .stroke(Color("myblue"), lineWidth: 2))
                .padding()
                
                Button(action: {
                    isCancel2 = true
                }, label: {
                    Text("Cancel".uppercased())
                        .padding()
                        .frame(width: 170, height: 40)
                    
                        .background(Color("mywhite").cornerRadius(31))
                        .foregroundColor(Color("myblue"))
                    
                        .font(.headline)
                })
                
                .overlay(
                    RoundedRectangle(cornerRadius:31 )
                        .stroke(Color("myblue"), lineWidth: 2))
                
                
                
            }
            
            .padding(.bottom, 30)
            .fullScreenCover(isPresented: $isCancel2) {
                ArtistSettings()
                
            }.fullScreenCover(isPresented: $isLonout2) {
                ContentView()
                
            }
            
            
        }
        
    }
        
        struct LogOut_Previews: PreviewProvider {
            static var previews: some View {
                LogOut()
            }
        }
    }
    
