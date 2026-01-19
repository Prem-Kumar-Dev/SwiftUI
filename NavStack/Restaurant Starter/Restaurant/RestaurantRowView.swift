//
//  RestaurantRowView.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct RestaurantRowView: View {
    let restaurant: Restaurant
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: restaurant.imageName)
                .font(.system(size: 40))
                .foregroundStyle(.orange)
                .frame(width: 60, height: 60)
                .background(Color.orange.opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(restaurant.name)
                    .font(.headline)
                
                Text(restaurant.cuisine)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text(String(format: "%.1f", restaurant.rating))
                        .font(.caption)
                }
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    RestaurantRowView(restaurant: Restaurant.sampleData[0])
}
