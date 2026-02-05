//
//  ContentView.swift
//  CountryFlag
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct ContentView: View {
    let adaptive = [GridItem(.adaptive(minimum: 180))]
//    let fixedColumn = [GridItem(.fixed(80)),
//                 GridItem(.fixed(80))]
    let flags = CountryData.countries
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: adaptive, spacing: 20){
                ForEach(flags){flag in
                    FlagCardView(flag: flag)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
