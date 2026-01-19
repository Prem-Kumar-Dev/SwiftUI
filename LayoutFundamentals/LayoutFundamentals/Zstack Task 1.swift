//
//  Zstack Task 1.swift
//  LayoutFundamentals
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct Zstack_Task_1: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(.image).resizable().scaledToFit().cornerRadius(30).padding()
            
            HStack {
                Rectangle().fill(.green).frame(width: 25,height: 25).cornerRadius(5).overlay(
                    Circle().fill(.white).frame(width: 10)
                )
                Text("Veg").font(.title).foregroundStyle(.green)
            }.offset(x: 30, y: -25)
        }
    }
}

#Preview {
    Zstack_Task_1()
}
