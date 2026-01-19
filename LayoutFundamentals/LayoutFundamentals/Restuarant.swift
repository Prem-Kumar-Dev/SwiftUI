//
//  Restuarant.swift
//  LayoutFundamentals
//
//  Created by GU on 20/12/25.
//

import SwiftUI

struct Restuarant: View {
    var body: some View {
        Text("Restaurants").font(.largeTitle).bold()
        ScrollView(.vertical){
            VStack(alignment: .leading){
                ForEach(1..<10) { i in
                    Text("Restaurant \(i)")
                        .font(.title)
                        .fontWeight(.semibold)
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(1..<10) { j in
                                Rectangle()
                                    .fill(.mint.opacity(0.5))
                                    .frame(width: 200, height: 200)
                                    .cornerRadius(20)
                                    .overlay(
                                        Text("Dish \(j)")
                                    )
                            }
                        }
                    }
                }
            }
            .padding([.leading, .trailing])
        }
    }
}

#Preview {
    Restuarant()
}
