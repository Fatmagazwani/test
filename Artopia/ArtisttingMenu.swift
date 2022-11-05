import SwiftUI

struct ArtisttingMenu: View {
    
    @State private var isSetting = false
    @State private var isOrders = false
    @State private var isCancel = false
    
    var body: some View {
        NavigationView{
            
            ZStack {
                
            ContentViewforArtist()
                 .blur(radius:2.2)
                
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("mywhite"))
                        .frame(width: 320, height: 214)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color("mypurple"), lineWidth: 2)
                        ) .padding(.top,0 )
                    
                    ZStack{
                        VStack (alignment: .center){
                            
                            Button {
                             isSetting = true
                            } label: {
                                Text("Setting")
                                    .font(.title)
                                    .foregroundColor(Color("myblue"))
                                
                                
                            }
                            .font(.headline)
                            .padding(.vertical ,1)
                            
                            Button {
                              isOrders = true
                            } label: {
                                Text("Orders")
                                    .font(.title)
                                    .foregroundColor(Color("myblue"))
                                
                                
                            }
                            .font(.headline)
                            .padding(.vertical,15)
                            
                            Button(action: {
                              isCancel = true
                            }, label: {
                                Text("Cancel".uppercased())
                                    .padding()
                                    .frame(width: 170, height: 40)
                                    .background(Color("myblue").cornerRadius(31))
                                
                                    .foregroundColor(Color("mywhite"))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 31)
                                            .stroke(Color("mywhite"), lineWidth: 2)
                                    )
                                    .font(.headline)
                                
                                
                                
                            })
                            .padding(.horizontal, 40)
                        }
                        
                        
                    }
                }
            }
        }
        .fullScreenCover(isPresented: $isSetting) {
            ArtistSettings()

        }

        .fullScreenCover(isPresented: $isOrders) {
            BuyerOrders()

        }

        .fullScreenCover(isPresented: $isCancel) {
            ContentViewforArtist()

        }
        
    }
    struct ArtisttingMenu_Previews: PreviewProvider {
        static var previews: some View {
            ArtisttingMenu()
        }
    }
    
    
    
}
