//
//  RestaurantDetailView.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct RestaurantDetailView: View {
    let restaurant: Restaurant
    
    var body: some View {
        List{
            ForEach(restaurant.menus){menu in
                NavigationLink{
                    MenuDetailView(menu: menu)
                }label: {
                    MenuRowView(menu: menu)
                }
                .navigationTitle(restaurant.name)
            }
        }
        
    }
}

#Preview {
    NavigationStack{
        RestaurantDetailView(restaurant: Restaurant.sampleData[0])
    }
}
