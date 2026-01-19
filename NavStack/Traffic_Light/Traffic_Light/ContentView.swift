//
//  ContentView.swift
//  Traffic_Light
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink("Start the traffic light", destination: RedLightView())
                .font(.largeTitle)
                .bold()
        }
    }
}

#Preview {
    ContentView()
}
