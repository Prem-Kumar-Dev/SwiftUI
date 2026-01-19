//
//  Task2.swift
//  LayoutFundamentals
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct Task2: View {
    var body: some View {
        VStack(){
            Image(.myphoto).resizable().scaledToFit().frame(width: 300).clipShape(Circle()).shadow(radius: 5)
            Text("Saksham Bansal").font(.largeTitle).fontWeight(.bold)
            Text("Adm no: 23SCSE1180483")
            Text("Just a rookie IOS developer trying to learn SwiftUI and testing its capabilities").multilineTextAlignment(.center).fontWeight(.ultraLight)
        }.padding()
            .background(.green.opacity(0.3))
            .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    Task2()
}
