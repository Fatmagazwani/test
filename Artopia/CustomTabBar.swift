//
//  CustomTabBar.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case heart
    case person
    case cart
}
    struct CustomTabBar: View {
        @Binding var selectedTab: Tab
        private var fillImage: String {
            selectedTab .rawValue + ".fill"
        }


        var body: some View {

            VStack {
                Spacer()
                HStack {
                    ForEach(Tab.allCases, id: \.rawValue) {tab in
                        Spacer ()
                        Image (systemName: selectedTab == tab ? fillImage : tab.rawValue)
                            .scaleEffect (selectedTab == tab ? 1.25 : 1.0)
                            .foregroundColor( selectedTab == tab ? Color("myblue") : .gray)
                            .font(.system(size: 22))
                            .onTapGesture {
                                withAnimation (.easeIn(duration: 0.1)){
                                    selectedTab = tab
                                }
                            }
                        Spacer ()
                    }
                }
                .frame(width: nil, height: 60)
                .background(.thinMaterial)
                .cornerRadius(30)
                .padding()


            }
            .padding()
        }
    }

    struct CustomTabBar_Previews: PreviewProvider {
        static var previews: some View {
            CustomTabBar(selectedTab: .constant(.house))
        }
    }
