//
//  ArtistorVisitor.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct ArtistorVisitor: View {
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .center) {                   bg()
        
                    BackButton()
                        .padding(.trailing,310)
                        .padding(.bottom,715)
                

                
                        VStack{
                            NavigationLink ("Artist")
                            {
                                ContentViewforArtist()
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 100.0, height: 100.0)
                            .background(Color("mypurple"))
                            .accentColor(Color("mywhite"))
                            .cornerRadius(20)
                            
                            
                            NavigationLink ("Visitor")
                            {
                                SignInWithApple()
                            }
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: 100.0, height: 100.0)
                            .background(Color("mypurple"))
                            .accentColor(Color("mywhite"))
                            .cornerRadius(20)
                            
                        }
                        
                        
                        
                        
                        
                    }
                }
                
            }
            
        }

struct ArtistorVisitor_Previews: PreviewProvider {
    static var previews: some View {
        ArtistorVisitor()
    }
}
