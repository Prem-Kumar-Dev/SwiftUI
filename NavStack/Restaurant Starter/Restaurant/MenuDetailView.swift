//
//  MenuDetailView.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct MenuDetailView: View {
    let menu: Menu
    
    var body: some View {
        List{
            ForEach(menu.dishes){dish in
                NavigationLink{
                    DishDetailView(dish: dish)
                } label: {
                    DishRowView(dish: dish)
                }
                .navigationTitle(menu.name)
            }
        }
    }
}

#Preview {
    NavigationStack{
        MenuDetailView(menu: Restaurant.sampleData[0].menus[0])
    }
}
