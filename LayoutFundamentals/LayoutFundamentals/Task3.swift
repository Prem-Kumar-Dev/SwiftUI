//
//  Task3.swift
//  LayoutFundamentals
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct Task3: View {
    var body: some View {
        HStack{
            Image(.myphoto).resizable().scaledToFit().clipShape(Circle()).frame(width: 100, alignment: .leading)
            Text("Saksham Bansal").font(.largeTitle)
        }.padding()
    }
}

#Preview {
    Task3()
}
