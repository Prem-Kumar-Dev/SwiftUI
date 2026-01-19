//
//  StarRating.swift
//  LayoutFundamentals
//
//  Created by GU on 20/12/25.
//

import SwiftUI

struct StarRatingView : View {
    @State var rating = 1
    
    var body: some View {
        HStack{
            ForEach(1..<6) { i in
                Button{
                    rating = i
                } label: {
                    Image(systemName: "star")
                        .font(.largeTitle)
                        .symbolVariant(i <= rating ? .fill : .none)
                }
            }
        }
    }
}
struct StarRating: View {
    var body: some View {
        StarRatingView()
            .foregroundStyle(.orange)
    }
}

#Preview {
    StarRating()
}
