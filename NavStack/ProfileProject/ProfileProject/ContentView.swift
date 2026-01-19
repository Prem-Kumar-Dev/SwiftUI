//
//  ContentView.swift
//  ProfileProject
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink(destination: AboutUs()){
                    HStack{
                        Image(systemName: "graduationcap.fill")
                        Text("About us")
                    }
                    .foregroundStyle(.cyan)
                }
                .font(.title)
                .foregroundStyle(.black).bold()
        
            }
        }
    }
}

#Preview {
    ContentView()
}
