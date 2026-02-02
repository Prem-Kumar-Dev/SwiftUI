//
//  ContentView.swift
//  NavStack
//
//  Created by Prem Kumar on 25/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink{
                    About()
                }label: {
                    HStack{
                        Image(systemName: "graduationcap.fill")
                        Text("About Us")
                    }
                }
                
                
            }
        }
    }
}

#Preview {
    ContentView()
}
