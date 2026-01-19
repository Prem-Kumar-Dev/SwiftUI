//
//  First_Screen.swift
//  NavigationStack_Link
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct First_Screen: View {
    var body: some View {
        NavigationStack{
            NavigationLink("Go to second screen"){
                Second_Screen()
            }
            .font(.largeTitle)
            .navigationTitle("Content View")
        }
            
    }
}

#Preview {
    First_Screen()
}
