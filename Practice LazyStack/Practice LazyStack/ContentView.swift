//
//  ContentView.swift
//  Practice LazyStack
//
//  Created by Prem Kumar on 05/02/26.
//

import SwiftUI

struct ContentView: View {
    let column = [GridItem(.fixed(80), spacing: 100), GridItem(.fixed(80))]
    var body: some View {
        ScrollView(.horizontal){
            LazyVGrid(columns: column){
                
            }
        }
    }
}

#Preview {
    ContentView()
}
