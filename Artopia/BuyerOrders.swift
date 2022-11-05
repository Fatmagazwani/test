//
//  BuyerOrders.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct BuyerOrders: View {
   
       
    var body: some View {
        
        NavigationView{
            ScrollView{
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
                    
                    
                    HStack{
                        VStack{
                            Text("Orders")
                                .font(.title)
                                .foregroundColor(Color("mydarkgray"))
                            
                            Text("Manage Your Orders")
                                .font(.caption)
                                .foregroundColor(Color("mydarkgray"))
                            Rectangle()
                                .frame(width: 300, height: 2.0)
                                .foregroundColor(Color("mygray"))
                                .padding(.bottom, 720)
                            
                        }
                        
                    }
                    
                    
                    VStack(alignment:.leading){
                        NavigationLink("Order No. 755647", destination:
                                    
                    ZStack {
                            OrderList()
                        })
                        .padding()
                        .alignmentGuide(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Guide@*/.leading/*@END_MENU_TOKEN@*/) { dimension in
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/dimension[.top]/*@END_MENU_TOKEN@*/
                        }
                        NavigationLink("Order No. 755645", destination:
                                    
                    ZStack {
                            OrderList()
                        })
                        .padding()
                        .alignmentGuide(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Guide@*/.leading/*@END_MENU_TOKEN@*/) { dimension in
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/dimension[.top]/*@END_MENU_TOKEN@*/
                        }
                        NavigationLink("Order No. 755623", destination:
                                    
                    ZStack {
                            OrderList()
                        })
                        .padding()
                        .alignmentGuide(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Guide@*/.leading/*@END_MENU_TOKEN@*/) { dimension in
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/dimension[.top]/*@END_MENU_TOKEN@*/
                        }
                        NavigationLink("Order No. 755456", destination:
                                    
                    ZStack {
                            OrderList()
                        })
                        .padding()
                        .alignmentGuide(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Guide@*/.leading/*@END_MENU_TOKEN@*/) { dimension in
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/dimension[.top]/*@END_MENU_TOKEN@*/
                        }
                    }
                    .padding(.bottom,360)
                    .padding(.trailing,200)
                }
                }
                
            }
        }
    }

    struct BuyerOrders_Previews: PreviewProvider {
        static var previews: some View {
            BuyerOrders()
        }
    }
    

