//
//  ContentView.swift
//  Task-State
//
//  Created by GU on 07/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selected : Bool = false
    
    var body: some View {
        VStack{
            Button("Toggle") {
                selected.toggle()
            }
        }
        StylizedText(selected: $selected)
        Text("Hello World!")
            .background(selected ? Color.blue : Color.red)
    }
}

#Preview{
    ContentView()
}

struct StylizedText : View {
    @Binding var selected : Bool
    var body: some View {
        Text("Hello world!")
            .background(selected ? Color.red : Color.blue)
    }
}
