//
//  ForEdArtistPage.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI
//struct OvalTextFieldStyle: TextFieldStyle {
//    func _body(configuration: TextField<Self._Label>) -> some View {
//        configuration
//
//            .padding(11) //height
//            .background(Color("mydarkgray").opacity(0.3))
//            .cornerRadius(20)
//    }
//}
struct ForEdArtistPage: View {
    
    @State var TextFieldText: String = ""
    @State var TextFieldText2: String = ""
    @State var TextFieldText3: String = ""
    @State var TextFieldText4: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView{
            ZStack{
                bg()
                
                VStack {
                    
                    Text("About you") .font(.title)
                    Text("Tell us who you are! You can modify your personal information here.")
                        .font(.caption)
                        .padding([.leading, .bottom, .trailing])
                    
                    
                    Form{
                        Section(header: Text("Name")
                            .font(.title2)){
                                TextField("Type your name here ...", text: $TextFieldText)
                                    .padding(.horizontal)
                                //                            .textFieldStyle(OvalTextFieldStyle())
                                
                                    .foregroundColor(Color("myblue"))
                            }
                        
                        Section(header: Text("category")
                            .font(.title2)){
                                TextField("Type your category here ...", text: $TextFieldText2)
                                .padding(.horizontal)}
                        
                        
                        Section(header: Text("bio")
                            .font(.title2)){
                                TextField("Type your bio here ...", text: $TextFieldText3)
                                .padding(.horizontal)}
                        
                        Section(header: Text("links")
                            .font(.title2)){
                                TextField("Type your links here ...", text: $TextFieldText4)
                                .padding(.horizontal)}
                    }
                    Button(action: {
                        SaveText()
                        
                    }, label: {
                        Text("Save".uppercased())
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color("myblue").cornerRadius(31))
                            .foregroundColor(Color(.white))
                            .font(.headline)
                    }) .padding(.horizontal, 30)
                    ForEach(dataArray, id: \.self) { data in
                        Text(data)
                    }
                    
                }
                .padding(.top)
            }
            
        }
    }
    func SaveText(){
        dataArray.append(TextFieldText)
        dataArray.append(TextFieldText2)
        dataArray.append(TextFieldText3)
        dataArray.append(TextFieldText4)
    }
}


struct ForEdArtistPage_Previews: PreviewProvider {
    static var previews: some View {
        ForEdArtistPage()
    }
}
