//
//  ContentView.swift
//  LayoutFundamentals
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 1) {
            Text("Samosa").font(.title).foregroundStyle(.blue)
            Text("This is an authentic dish that is loved by all Indians despite being extremely unhealthy").fontWeight(.ultraLight).italic()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
