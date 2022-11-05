//
//  OrderList.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct OrderList: View {
    var body: some View {
        
        ZStack{
            bg()
            
            VStack(alignment: .leading){
                
                HStack(alignment: .top)
                {
                    Image("The Mess")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 1.0, trailing: 0.0))
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .cornerRadius(8)
                        .padding(.leading)
                    
                    VStack(alignment: .leading, spacing: 5.0){
                        Text("The Mess")
                            .font(.title2)
                        Text("Info")
                        Text("00 SAR")
                    }
                    Spacer()
                }
                VStack(alignment: .leading){
                    
                    HStack(alignment: .top)
                    {
                        Image("The Mess")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 1.0, trailing: 0.0))
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .cornerRadius(8)
                            .padding(.leading)
                        
                        VStack(alignment: .leading, spacing: 5.0){
                            Text("The Mess")
                                .font(.title2)
                            Text("Info")
                            Text("00 SAR")
                        }
                    }
                }
                
                VStack(alignment: .leading){
                    
                    HStack(alignment: .top)
                    {
                        Image("The Mess")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 1.0, trailing: 0.0))
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .cornerRadius(8)
                            .padding(.leading)
                        
                        VStack(alignment: .leading, spacing: 5.0){
                            Text("The Mess")
                                .font(.title2)
                            Text("Info")
                            Text("00 SAR")
                        }
                        Spacer()
                    }
                }
                Rectangle()
                    .frame(width: 400, height: 2.0)
                    .foregroundColor(Color("mygray"))
                
                Text("Total Amount: 0000 SAR")
                    .padding()
                
                
            }
            .padding(.bottom,300)
        }
    }
}
        
        struct OrderList_Previews: PreviewProvider {
            static var previews: some View {
                OrderList()
            }
        }
