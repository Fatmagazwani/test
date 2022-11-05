import SwiftUI

struct PaintingDescription: View {
   
   @State var isFavorite: Bool = false
    
    
    @State var imageName: String = "heart"
    var body: some View {
        
        VStack{
            Image("Art")
                .resizable()
                .frame(width:UIScreen.main.bounds.width, height: 360.0)
                .aspectRatio(1.35, contentMode: .fill).offset(y: -50).padding(.bottom, -200)
            
            GeometryReader{geo in
//                ScrollView(.vertical) {
                    VStack(alignment: .leading){
                        detialTop()
                        detialMiddle()
                        detialBottom()
                        
                        
                   // }
                }
                
            }.background(Color.white)    //I would like add our bg image
                .clipShape(Rounded())
                .padding(.top, 105)
        }
    }
}
struct detialMiddle : View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
         
          //  HStack(spacing: 5){
           
            
            Text("250 SAR").bold() .font(.title2).foregroundColor(Color("myblue"))
          //  }
            
            
        }.padding(.horizontal,15)
    }
}


struct detialTop : View {
    
    @State var isFavorite: Bool = false
    
    @State var heart: String = "heart"
    @State var heartfill: String = "heart.fill"
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            
            
            HStack{
                
                VStack(alignment: .leading){
                    
                    Text("Will You Stay?").fontWeight(.heavy).font(.title).foregroundColor(Color("myblue"))
                    
                    Text("Oil painting by Arwa").font(.subheadline).foregroundColor(Color("mypurple"))
                    
                }.padding(.top, 20)
                
                Spacer()
                
                HStack {
                Button(action:{
                    isFavorite.toggle()
                    
                }) {
                    
                    if isFavorite == true  {
                        Image(systemName: heart)
                            .resizable()
                            .frame(width: 30, height: 28)
                            .foregroundColor(Color("mypurple"))
                    }
                    else
                    {
                        Image(systemName: heartfill)
                            .resizable()
                            .frame(width: 30, height: 28)
                            .foregroundColor(Color("mypurple"))
                            
                    }
                    
                }
                
                
                } .padding(.horizontal, 20)
                
            }.padding()
        }
        
        
    }
    
}
struct detialBottom : View {
    @State private var isADDTOCART = false
    var body: some View {
        ScrollView(.vertical){
            
            VStack(alignment: .leading, spacing: 10){
                
                Text("About").font(.title3).bold().foregroundColor(Color("myblue"))
                Text("The painting is not a portrait, but a tronie. That mean it is a painting of an imaginary figure. It depicts two girls who are close to each other depite the expressions of sadness and broken hope on their faces.").foregroundColor(Color("mydarkgray"))
                
                Spacer()
                Text("Specifications").font(.title3).bold().foregroundColor(Color("myblue"))
                
                
                HStack(spacing: 40){
                    
                    VStack(alignment: .leading, spacing: 14){
                        
                        Text("Artist")
                        Text("Types")
                        Text("Medium")
                        Text("Size")
                        Text("Date")
                    }.foregroundColor(Color("mydarkgray")).bold()
                    
                    VStack(alignment: .leading,spacing: 14){
                        Text("Arwa")
                        Text("Tronie")
                        Text("Oil on canvas")
                        Text("44.5cm X 39cm(17.5in X 15in)")
                        Text("Dec 2020")
                    }.foregroundColor(Color("mydarkgray"))
                }
                
                Spacer()
                VStack{
                    Addtocart()
                    
                    
                    //                Button(action: {
                    //                    isADDTOCART = true
                    //                }) {
                    //                    HStack (spacing: 6){
                    //                        Text("ADD TO CART".uppercased())
                    //
                    //                        Image(systemName: "cart").resizable()
                    //                            .frame(width: 32, height: 36)
                    //
                    //                    }.frame(width: 200, height: 25)
                    //                    .font(.headline)
                    //                    .foregroundColor(Color("mywhite"))
                    //                    .padding()
                    
                    //                        }.background(Color("myblue"))
                    //                        .cornerRadius(31)
                    //                        .frame(maxWidth: .infinity)
                    //                }.padding(.top, 15)
                    //                   // .fullScreenCover(isPresented: $isADDTOCART) {
                    //                    //    Checkout()
                    //            }.padding()
                    // .fullScreenCover(isPresented: $isADDTOCART) {
                    //    Checkout()
                    
                }
                // .fullScreenCover(isPresented: $isADDTOCART) {
                //    Checkout()
            }
            .padding(.leading)
            // .fullScreenCover(isPresented: $isADDTOCART) {
            //     Checkout()
        }
        // .fullScreenCover(isPresented: $isADDTOCART) {
        //     Checkout()
        
        
        
    }
    }
struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 40, height: 40))
        
        return Path(path.cgPath)
    }
}


    struct PaintingDescription_Previews: PreviewProvider {
        static var previews: some View {
            PaintingDescription()
        }
    }
