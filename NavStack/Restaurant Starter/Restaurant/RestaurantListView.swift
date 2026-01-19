//
//  RestaurantListView.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

import SwiftUI

struct RestaurantListView: View {
    let restaurants = Restaurant.sampleData
    
    var body: some View {
        List{
            ForEach(restaurants) { restaurant in
                NavigationLink{
                    RestaurantDetailView(restaurant: restaurant)
                } label: {
                    RestaurantRowView(restaurant: restaurant)
                }
               
            }
            
        }
        .navigationTitle("Restraunt")
    }
}

#Preview {
    NavigationStack{
        RestaurantListView()
    }
}
