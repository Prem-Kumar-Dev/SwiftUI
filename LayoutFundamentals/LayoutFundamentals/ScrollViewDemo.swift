//
//  ScrollViewDemo.swift
//  LayoutFundamentals
//
//  Created by GU on 20/12/25.
//

import SwiftUI

struct ScrollViewDemo: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(1..<101) { i in
                    Text("Item no. \(i)")
                        .bold()
                        .padding()
                        .background(.mint)
                }
            }
        }
    }
}

#Preview {
    ScrollViewDemo()
}
