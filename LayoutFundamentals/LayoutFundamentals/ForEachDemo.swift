//
//  ForEachDemo.swift
//  LayoutFundamentals
//
//  Created by GU on 20/12/25.
//

import SwiftUI

struct ForEachDemo: View {
    var body: some View {
        VStack{
            ForEach(1..<6) { _ in
                //ProfileView()
            }
        }
        .padding()
//        for i in 1...5 {
//            ProfileView()
//        }
    }
}

#Preview {
    ForEachDemo()
}
