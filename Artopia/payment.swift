//
//  payment.swift
//  Artopia
//
//  Created by randa on 09/04/1444 AH.
//

import SwiftUI

struct payment: View {
    @State private var isConfirm = false
    
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
                       Text("Checkout")
                           .font(.title)
                           .foregroundColor(Color("mydarkgray"))
                       Text("Address and payment method")
                           .font(.caption)
                           .foregroundColor(Color("mydarkgray"))
                       
                       Rectangle()
                           .frame(width: 300, height: 2.0)
                           .foregroundColor(Color("mygray"))
                           .padding(.bottom, 700)
                       
                   }
                   
                   
                   VStack(alignment: .leading, spacing: 20.0){
                       Text("Delivery Address")
                           .font(.title2)
                           .foregroundColor(Color("myblue"))
                          // .padding(.bottom,100)
                           .padding()
                       HStack{
                           Image("Address")
                               .resizable()
                               .frame(width: 40, height: 40)
                               .foregroundColor(Color("myblue"))
                           
                           VStack(alignment:.leading){
                               Text("234 An Narjis")
                                   .font(.title3)
                                   .foregroundColor(Color("myblue"))
                               // .padding(.trailing,0)
                               Text("Riyadh")
                                  // .font(.title2)
                                   .foregroundColor(Color("mygray"))
                               
                           }
                           Spacer()
                              Text("Edit")
                              
                                   .foregroundColor(Color("myblue"))
                                   .padding(.trailing,20)
                           
                           
                           
                           
                       }
                      
                       VStack{
                           Text("Payment Method")
                               .padding(.leading)
                               .font(.title2)
                               .foregroundColor(Color("myblue"))
                           HStack{
                               Image(systemName: ("record.circle"))
                                   .resizable()
                                   .frame(width: 20, height: 20)
                                   .foregroundColor(Color("myblue"))
                               Image("Cash")
                                   .resizable()
                                   .frame(width: 40, height: 40)
                                   .foregroundColor(Color("myblue"))
                               Text("Cash Pay")
                                   .font(.title3)
                                   .foregroundColor(Color("myblue"))
                               
                               
                           }
                           .padding(18.994)

                       }
                       HStack (alignment:.top){
                       Button(action: {
                           isConfirm = true
                                          }) {
                                              
                                                  Text("Confirm and continue ".uppercased())
                      
                      
                      
                                              }.frame(width: 250, height: 25)
                                                  .font(.headline)
                                                  .foregroundColor(Color("mywhite"))
                                                  .padding()
                      
                                          }
                       .background(Color("myblue"))
                                              .cornerRadius(31)
                                              .frame(maxWidth: .infinity)
                                              .padding(.top,240)
                           }
                    //   .padding(.bottom, 200.0)
                   }
                   .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                   .fullScreenCover(isPresented: $isConfirm) {
                       Done()}
                  
               
               }
       }

struct payment_Previews: PreviewProvider {
    static var previews: some View {
        payment()
    }
}
