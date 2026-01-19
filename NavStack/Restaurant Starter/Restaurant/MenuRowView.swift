//
//  MenuRowView.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

struct MenuRowView: View {
    let menu: Menu
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(menu.name)
                .font(.headline)
            
            Text(menu.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
            
            Text("\(menu.dishes.count) dishes")
                .font(.caption)
                .foregroundStyle(.blue)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    MenuRowView(menu: Restaurant.sampleData[0].menus[0])
}
