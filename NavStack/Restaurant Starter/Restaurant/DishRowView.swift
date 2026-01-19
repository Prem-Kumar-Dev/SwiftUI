//
//  DishRowView.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct DishRowView: View {
    let dish: Dish
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                Text(dish.name)
                    .font(.headline)
                
                Text(dish.description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                
                HStack {
                    Text("\(dish.calories) cal")
                        .font(.caption2)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 2)
                        .background(Color.green.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                }
            }
            
            Spacer()
            
            Text("$\(String(format: "%.2f", dish.price))")
                .font(.headline)
                .foregroundStyle(.blue)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    DishRowView(dish: Restaurant.sampleData[0].menus[0].dishes[0])
}
