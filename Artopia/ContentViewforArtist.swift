//
//  ContentViewforArtist.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI
struct ContentViewforArtist: View {
    
    
    let gridItems = [
        GridItem(height: 174, imgString: "oil"),
        
        
        GridItem(height: 320, imgString: "portrait9"),
        GridItem(height: 174, imgString: "fuu-j-Lo7venJ_ywM-unsplash"),
        GridItem(height: 240, imgString: "portrait2"),
        GridItem(height: 130, imgString: "abstract3434"),
        GridItem(height: 150, imgString: "flower"),
        GridItem(height: 230, imgString: "tamara-menzi-n-vnWQmmVoY-unsplash"),
        GridItem(height: 150, imgString: "abstract782014"),
        GridItem(height: 150, imgString: "landscape4"),
        
        GridItem(height: 230, imgString: "abstract6"),
        GridItem(height: 200, imgString: "maria"),
        GridItem(height: 160, imgString: "portrait555")
        
        
        
    ]
    
    var body: some View {
        
        NavigationView{
            ZStack{
                bg()
                
                ScrollView{
                    
                    //
                    //                            ArtistSettingButton()
                    //                                .padding(.leading,310)
                    //                                .padding(.bottom,715)
                    
                    Image ("Profile").resizable().frame(width: 70.0, height: 70.0)
                    Text("Arwa Almalki")
                        .font(.caption)
                        .fontWeight(.bold)
                    Text("Artist")
                        .font(.footnote)
                    Text("Intersted in Fine Art ")
                        .font(.footnote).foregroundColor(.gray)
                    
                    Text("For bussnise enquiries : arwa.malki@info.com")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    VStack{
                        
                        
                        ArtistProfile(gridItems: gridItems, numOfColumns: 3, spacing: 13, horizontalPadding:10)
                        
                        //                    Image("Profile").resizable().frame(width: 105, height: 90)
                        ////                    Text("Arwa Almalki")
                        ////                        .font(.callout)
                        //                    Text("Artist")
                        //                        .font(.footnote)
                    }
                    //                (gridItems: gridItems, numOfColumns: 3, spacing: 13, horizontalPadding:10)
                    //
                }
                //            .navigationBarItems (leading: removeBtn, trailing:  View)
                //            .navigationTitle( "Profile").font(.callout)
                
                
            }
        }
        
        
        //    var removeBtn: some View {
        //        Button (action:  {
        //            columns -= 1
        //
        //        })
        //        {
        //            Text ("Remove")
        //        }.disabled(columns == 1)
        //    }
        
        
        
    }
    
    
    struct ContentViewforArtist_Previews: PreviewProvider {
        static var previews: some View {
            ContentViewforArtist()
        }
        
    }
}
