//
//  ContentView.swift
//  BadgeModifirr
//
//  Created by Prem Kumar on 02/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Home", systemImage: "house.fill"){
                
            }
            Tab("Messages", systemImage: "message.fill"){
                
            }
        }
        
    }
}

#Preview {
    ContentView()
}
