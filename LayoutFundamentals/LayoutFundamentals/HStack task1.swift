//
//  HStack task1.swift
//  LayoutFundamentals
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct HStack_task1: View {
    var body: some View {
        HStack{
            Image(systemName: "star.fill").foregroundStyle(.yellow).font(.largeTitle)
            Text("3.6").font(.largeTitle)
        }
    }
}

#Preview {
    HStack_task1()
}
