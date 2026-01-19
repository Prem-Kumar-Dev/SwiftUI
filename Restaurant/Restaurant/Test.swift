//
//  Test.swift
//  Restaurant
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct Test: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Image(.rasmalai).resizable().scaledToFit().cornerRadius(20)
            //Text("Ras Malai").padding().background(.black.opacity(0.2)).cornerRadius(20)
            Rectangle().frame(width: 400, height: 60).background(.ultraThinMaterial).overlay(Text("Ras Malai"))
        }
        
        
    }
}

#Preview {
    Test()
}
