//
//  AppearDemo.swift
//  LayoutFundamentals
//
//  Created by GU on 20/12/25.
//

import SwiftUI

struct AppearDemo: View {
    var body: some View {
        ScrollView{
            //Normal VStack renders all the views at once, but LazyVStack only creates views when they are on screen
            LazyVStack{
                ForEach(1..<501) { i in
                    Text("Item no. \(i)")
                        .padding(25)
                        .background(.yellow.opacity(0.3))
                        .onAppear {
                            print("Item \(i) appeared")
                        }
                }
            }
        }
    }
}

#Preview {
    AppearDemo()
}
