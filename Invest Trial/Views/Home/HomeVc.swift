//
//  HomeVc.swift
//  Invest Trial
//
//  Created by Abservetech on 25/09/23.
//

import SwiftUI

struct HomeVc: View {
    var body: some View {
        TabView {
            HomeDetailVw()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Home")
                        .animation(.interpolatingSpring(mass: 0.7, stiffness: 200, damping: 10, initialVelocity: 4))
                }
            Text("Product Data")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Product")
                        .animation(.interpolatingSpring(mass: 0.7, stiffness: 200, damping: 10, initialVelocity: 4))
                }
            Text("Transaction Data")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Transaction")
                        .animation(.interpolatingSpring(mass: 0.7, stiffness: 200, damping: 10, initialVelocity: 4))
                }
            ProfileVc()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                        .animation(.interpolatingSpring(mass: 0.7, stiffness: 200, damping: 10, initialVelocity: 4))
                }
            
        } .accentColor(.appColor())
        
    }
}

struct HomeVc_Previews: PreviewProvider {
    static var previews: some View {
        HomeVc()
    }
}
