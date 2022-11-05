//
//  Done.swift
//  Artopia
//
//  Created by randa on 09/04/1444 AH.
//

import SwiftUI

struct Done: View {
    @State private var isDone = false
    var body: some View {
        
        ZStack {
            bg()
                    RoundedRectangle(cornerRadius: 71)
                        .stroke(Color("mypurple"), lineWidth: 3)
                        .frame(width: 300, height: 300)
                        .padding()
            
            
                Button {
                    isDone = true
                } label: {
                    HStack{
                        Text("DONE").foregroundColor(Color("myblue")).bold().font(.title)
                                            }
            }
           
        }.fullScreenCover(isPresented: $isDone) {
            ContentView()}
    }
}

struct Done_Previews: PreviewProvider {
    static var previews: some View {
        Done()
    }
}
