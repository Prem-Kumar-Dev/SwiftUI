//
//  RestaurantApp.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import SwiftUI

@main
struct RestaurantApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                RestaurantListView()
            }
        }
    }
}
