//
//  PintrestGrid.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI
struct GridItem:Identifiable {
    let id = UUID()
    let height: CGFloat


    let imgString: String
}
struct PinterestGrid: View {
    

    struct Column: Identifiable {
        let id = UUID()
        var gridItems = [GridItem]()
        

    }

    let columns: [Column]
    let spacing: CGFloat
    let horizontalPadding: CGFloat
    //now we have to calculate the grid Layout so that it is more dynamic
    init(gridItems: [GridItem], numOfColumns: Int, spacing: CGFloat = 20, horizontalPadding: CGFloat = 20) {
        self.spacing = spacing
        self.horizontalPadding = horizontalPadding
        

        var columns = [Column]()
        for _ in 0 ..< numOfColumns {
            columns.append (Column())
        }
       

        // this stores the current height
        var columnsHeight = Array<CGFloat>(repeating: 0, count: numOfColumns)

        // now comes the hardest part!
        for gridItem in gridItems {

            var smallestColumnIndex = 0
            var smallestHeight = columnsHeight.first!
            for i in 1 ..< columnsHeight.count {
                let curHeight = columnsHeight[i]
                if curHeight < smallestHeight {
                    smallestHeight = curHeight
                    smallestColumnIndex = i
                }
            }




            columns [smallestColumnIndex].gridItems
                .append(gridItem)
               columnsHeight[smallestColumnIndex] += gridItem.height

            }

        self.columns = columns
            }

    var body: some View{
        
        
        ZStack{
            
            HStack(alignment: .top, spacing: spacing){
                ForEach(columns) {column in
                    LazyVStack(spacing: spacing) {
                        ForEach(column.gridItems) { gridItem in
                            getItemView(gridItem: gridItem)
                            //                                Rectangle()
                            //                                    .foregroundColor(.blue)
                            //                                    .frame(height: gridItem.height)
                            //                                    .overlav(
                            //                                        Text (gridItem.title)
                            //                                            .font(. system(size: 30, weight: .bold))
                            //                                    )
                            
                        }
                    }
                    
                }
                
            }.padding(.horizontal, horizontalPadding)
        }
       
    }
    func getItemView(gridItem: GridItem) -> some View {
        ZStack {
            GeometryReader { reader in
                Image(gridItem.imgString)
                    .resizable()
                    .scaledToFill()
                    .frame(width: reader.size.width,
                           height: reader.size.height,
                         alignment: .center)
            }
        }
        .frame(height: gridItem.height)
        .frame (maxWidth: .infinity)
        .clipShape (RoundedRectangle (cornerRadius: 13))
    }
    }








struct PinterestGrid_Previews: PreviewProvider {
        static var previews: some View {
           
            Tabs()
        }
}
