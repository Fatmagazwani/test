//
//  Tabs.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

struct Tabs: View {
    var gridItems = [GridItem]()


    var body: some View {
        TabView {

            ContentView()
             //   .badge(1)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ArtistorVisitor()
            
//                .badge("!")
                .tabItem {
                    Label("Profile", systemImage:"person")
                }
            
            Wishlist()
             //   .badge(1)
                .tabItem {
                    Label("Wishlist", systemImage: "heart")
                }
            
            Cart()
             //   .badge(1)
                .tabItem {
                    Label("Home", systemImage: "cart")
                }
                .accentColor(/*@START_MENU_TOKEN@*/Color("myblue")/*@END_MENU_TOKEN@*/)
                .background(.thinMaterial)
                .cornerRadius(30)
                .padding()
        }
        

    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
