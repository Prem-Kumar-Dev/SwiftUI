//
//  ContentView.swift
//  WeatherCard
//
//  Created by GU on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Rectangle()
                .frame(height: 250)
                .cornerRadius(20)
                .foregroundStyle(.black.opacity(0.3))
                .overlay(
                    VStack(alignment: .leading){
                        Image(.cloud).resizable().frame(height: 160).cornerRadius(20)
                        Text("cloudy").foregroundStyle(.white)
                        Text("21°C").foregroundStyle(.white).font(.system(size: 30))
                    }.padding()
                )
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
