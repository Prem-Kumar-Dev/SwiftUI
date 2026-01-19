//
//  DishDetailView.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct DishDetailView: View {
    let dish: Dish
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                headerView
                Divider()
                HStack(spacing: 30) {
                    priceView
                    calorieView
                }
                Divider()
                ingredientView
                Spacer()
            }
            .padding()
        }
        .navigationTitle("Dish Details")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    var headerView: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(dish.name)
                .font(.largeTitle)
                .bold()
            
            Text(dish.description)
                .font(.body)
                .foregroundStyle(.secondary)
        }
    }
    
    var priceView: some View {
        VStack(alignment: .leading) {
            Text("Price")
                .font(.caption)
                .foregroundStyle(.secondary)
            Text("$\(String(format: "%.2f", dish.price))")
                .font(.title2)
                .bold()
                .foregroundStyle(.blue)
        }
    }
    var calorieView: some View {
        VStack(alignment: .leading) {
            Text("Calories")
                .font(.caption)
                .foregroundStyle(.secondary)
            Text("\(dish.calories)")
                .font(.title2)
                .bold()
                .foregroundStyle(.green)
        }
    }
    
    var ingredientView: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Ingredients")
                .font(.headline)
            
            ForEach(dish.ingredients, id: \.self) { ingredient in
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(.green)
                    Text(ingredient)
                }
            }
        }
    }
}


#Preview {
    DishDetailView(dish: Restaurant.sampleData[0].menus[0].dishes[0])
}
