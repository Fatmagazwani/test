//
//  Cart.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct Cart: View {
    var body: some View {
        ZStack{
            bg()
            BackButton()
                .padding(.trailing, 310)
                .padding(.bottom, 715)
            
            
            
            VStack{
                GeometryReader{geo in
                    VStack(alignment: .leading){
                        detialCart()
                        
                        
                  
                    
                }.background(Color("mypurple"))
                    .clipShape(Rounded())
                  .padding(.top, 570)
                }
            }
        }
    }
}
        
struct detialCart : View {
    @State var Coupon: String = ""
    @State private var isbuy = false
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            
            HStack(){
                Text("Apply").bold() .font(.title2).foregroundColor(Color("myblue")).padding(.leading, 30)
                    .padding(.top)
                
                TextField("Enter Coupon Code ...", text: $Coupon)
                    .textFieldStyle(OvalTextFieldStyle())
                    .foregroundColor(Color("myblue"))
                    .font(.headline)
                    .padding(.horizontal, 30)
                    .padding(.top, 20)
                 }
            HStack(spacing: 110){
                Text("500.00 SAR").bold() .font(.title3).foregroundColor(Color("mydarkgray"))
                Text("Subtotall").bold() .font(.title3).foregroundColor(Color("mydarkgray"))
            }
            .padding(.leading, 30)
            
            HStack(spacing: 130){
                Text("12.00 SAR").bold() .font(.title3).foregroundColor(Color("mydarkgray"))
                Text("Shipping").bold() .font(.title3).foregroundColor(Color("mydarkgray"))
            }.padding(.leading, 30)

            HStack(spacing: 130){
                Text("512.00 SAR").bold() .font(.title3).foregroundColor(Color("myblue"))
                
                Text("Total").bold() .font(.title3).foregroundColor(Color("myblue"))
            }.padding(.leading, 30)
            
            ZStack{
                Button(action: {
                    isbuy = true
                }) {
                    HStack (spacing: 6){
                        Text("Buy 2 ITems for 512.00 SAR".uppercased())
                        
                    }.frame(width: 280, height: 15)
                        .font(.title3)
                        .foregroundColor(Color("mywhite"))
                        .padding()
                    
                }.background(Color("myblue"))
                    .cornerRadius(31)
                    .frame(maxWidth: .infinity)
            }
            
        }
            .padding(.bottom, 200)
            .fullScreenCover(isPresented: $isbuy) {
              payment()}
        }
              
            
        }
       
            
            
            





struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(11) //height
                       .background(Color("mydarkgray").opacity(0.3))
                       .cornerRadius(20)
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart()
    }
}
