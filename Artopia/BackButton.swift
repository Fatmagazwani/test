//
//  BackButton.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct BackButton: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "arrow.backward.circle")
                    .resizable()
                    .frame(width: 38, height: 36)
                    .foregroundColor(Color("mypurple"))
                
                    
                        
                
                
                  
            }
            .navigationBarHidden(true)
            
        }
     
    }
    
    struct BackButton_Previews: PreviewProvider {
        static var previews: some View {
            BackButton()
        }
    }
}
