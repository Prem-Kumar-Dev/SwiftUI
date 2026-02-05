//
//  ContentView.swift
//  Grid
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct ContentView: View {
    
    let rows = [GridItem(.fixed(80), spacing: 30), GridItem(.fixed(80), spacing: 20),GridItem((.fixed(100)))]
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: rows, spacing: 20){
                ForEach(1...20, id: \.self){cell in
                    Color.red
                    .frame(width: 100)
                    .overlay{
                        Text("Item \(cell)")
                            .foregroundStyle(.white)
                    }
                    
                    Circle()
                        .foregroundStyle(.yellow)
                    .frame(width: 100)
                    .overlay{
                        Text("Item \(cell)")
                            .foregroundStyle(.white)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
