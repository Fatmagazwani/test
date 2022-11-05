//
//  Address.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import MapKit
import SwiftUI

struct Address: View {
    @StateObject private var viewModel = AddressModel()
    @State private var issave = false
    
    
    
    var body: some View {
        
        VStack(alignment: .leading){
            HStack(){
                
                BackButton()
                    .padding(.horizontal, 20.0)
                
                Button(action: {issave = true}
                       , label:{
                    Text( "Save")
                        .font(.title2)
                        .foregroundColor(Color("myblue"))
                        .padding(.leading, 83.0)
                    
                })
            }
            
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                .ignoresSafeArea()
                .accentColor(Color(.systemBlue))
                .onAppear{
                    viewModel.checkIfLocationServicesIsEnabled()
                }
        }
    
    
        .fullScreenCover(isPresented: $issave){AddressPreviews()
        }
    }
}
struct Address_Previews: PreviewProvider {
    static var previews: some View {
        Address()
    }
}
