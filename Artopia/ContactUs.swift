//
//  ContactUs.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct ContactUs: View {
   
    var body: some View {
        
        
        ZStack {
           
            Image("bg")
                .resizable()
                .foregroundColor(Color("mywhite"))
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 800, alignment: .center)
                .opacity(1.0)
            
            
            BackButton()
            .padding(.trailing,310)
            .padding(.bottom,715)
            

            
            
            
            VStack{
                Text("Contact Us")
                    .font(.title)
                    .foregroundColor(Color("mydarkgray"))
                
               // Text("Manage Your Settings")
                   // .font(.caption)
                  //  .foregroundColor(Color("mydarkgray"))
                Rectangle()
                    .frame(width: 300, height: 2.0)
                    .foregroundColor(Color("mygray"))
                    .padding(.bottom, 700)
                
            }
//            VStack(alignment: .leading, spacing: 20.0){
//
//                Text("Hello Buyer")
//                    .font(.title)
//                    .fontWeight(.medium)
//                    .foregroundColor(Color("myblue"))
//                    .padding(.bottom)
//                    .padding(.trailing, 170)
//                    .padding(.bottom, 550)
//            }
            VStack(alignment: .leading, spacing: 20.0){
                HStack{
                    Image(systemName: "envelope.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color("myblue"))
                    
                    
                    Text("Artopia@artcom")
                        .font(.title2)
                        .foregroundColor(Color("myblue"))
                       // .padding(.trailing,0)
                    
                }
                
                HStack{
                    Image("insgram")
                        .resizable()
                        .frame(width: 40, height: 40)
                       .foregroundColor(Color("myblue"))
                        
                    
                    Text("Artopia")
                        .font(.title2)
                    
                        .foregroundColor(Color("myblue"))
                      //  .padding()
                }
                
                HStack{
                    Image("twitter")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color("myblue"))
                    
                    Text("Artopia")
                        .font(.title2)
                        .foregroundColor(Color("myblue"))
                       // .padding()
                }
               
            }
            .padding(.trailing, 140)
            .padding(.bottom, 200)
        }
    }
        }

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
        ContactUs()
    }
}
