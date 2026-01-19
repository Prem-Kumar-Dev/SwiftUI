//
//  Restaurant.swift
//  Restaurant
//
//  Created by Shruti Sachdeva on 18/01/26.
//

import Foundation

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let cuisine: String
    let rating: Double
    let imageName: String
    let menus: [Menu]
}

struct Menu: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let dishes: [Dish]
}

struct Dish: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let calories: Int
    let ingredients: [String]
    let description: String
}

extension Restaurant {
    static let sampleData: [Restaurant] = [
        Restaurant(
            name: "Spice Garden",
            cuisine: "Indian",
            rating: 4.5,
            imageName: "fork.knife",
            menus: [
                Menu(name: "Lunch Special", description: "Available 12 PM - 3 PM", dishes: [
                    Dish(name: "Butter Chicken", price: 12.99, calories: 450, ingredients: ["Chicken", "Butter", "Tomato", "Cream", "Spices"], description: "Tender chicken in rich tomato-butter sauce"),
                    Dish(name: "Palak Paneer", price: 10.99, calories: 380, ingredients: ["Spinach", "Paneer", "Cream", "Spices"], description: "Cottage cheese in creamy spinach gravy")
                ]),
                Menu(name: "Dinner Menu", description: "Available 6 PM - 11 PM", dishes: [
                    Dish(name: "Biryani", price: 14.99, calories: 520, ingredients: ["Rice", "Chicken", "Yogurt", "Spices"], description: "Aromatic rice with marinated chicken"),
                    Dish(name: "Tandoori Chicken", price: 13.99, calories: 400, ingredients: ["Chicken", "Yogurt", "Tandoori Masala"], description: "Clay oven roasted chicken")
                ])
            ]
        ),
        Restaurant(
            name: "Pasta Paradise",
            cuisine: "Italian",
            rating: 4.7,
            imageName: "fork.knife",
            menus: [
                Menu(name: "Classic Pasta", description: "Traditional Italian recipes", dishes: [
                    Dish(name: "Spaghetti Carbonara", price: 15.99, calories: 580, ingredients: ["Pasta", "Eggs", "Bacon", "Parmesan", "Black Pepper"], description: "Classic Roman pasta with eggs and bacon"),
                    Dish(name: "Fettuccine Alfredo", price: 14.99, calories: 620, ingredients: ["Pasta", "Butter", "Cream", "Parmesan"], description: "Creamy pasta with parmesan sauce")
                ]),
                Menu(name: "Pizza Menu", description: "Wood-fired pizzas", dishes: [
                    Dish(name: "Margherita Pizza", price: 12.99, calories: 480, ingredients: ["Dough", "Tomato", "Mozzarella", "Basil"], description: "Simple and classic tomato mozzarella pizza"),
                    Dish(name: "Pepperoni Pizza", price: 14.99, calories: 550, ingredients: ["Dough", "Tomato", "Mozzarella", "Pepperoni"], description: "America's favorite pizza")
                ])
            ]
        ),
        Restaurant(
            name: "Sushi Station",
            cuisine: "Japanese",
            rating: 4.8,
            imageName: "fork.knife",
            menus: [
                Menu(name: "Sushi Rolls", description: "Fresh hand-rolled sushi", dishes: [
                    Dish(name: "California Roll", price: 8.99, calories: 250, ingredients: ["Rice", "Nori", "Crab", "Avocado", "Cucumber"], description: "Classic American-style sushi roll"),
                    Dish(name: "Spicy Tuna Roll", price: 10.99, calories: 290, ingredients: ["Rice", "Nori", "Tuna", "Spicy Mayo"], description: "Fresh tuna with spicy kick")
                ]),
                Menu(name: "Bento Boxes", description: "Complete meal boxes", dishes: [
                    Dish(name: "Chicken Teriyaki Bento", price: 13.99, calories: 520, ingredients: ["Chicken", "Teriyaki Sauce", "Rice", "Vegetables"], description: "Grilled chicken with sides"),
                    Dish(name: "Salmon Bento", price: 15.99, calories: 580, ingredients: ["Salmon", "Rice", "Vegetables", "Miso Soup"], description: "Grilled salmon with traditional sides")
                ])
            ]
        ),
        Restaurant(
            name: "Taco Fiesta",
            cuisine: "Mexican",
            rating: 4.6,
            imageName: "fork.knife",
            menus: [
                Menu(name: "Tacos", description: "Authentic street tacos", dishes: [
                    Dish(name: "Carne Asada Taco", price: 3.99, calories: 220, ingredients: ["Beef", "Tortilla", "Onion", "Cilantro", "Lime"], description: "Grilled beef taco"),
                    Dish(name: "Fish Taco", price: 4.99, calories: 240, ingredients: ["Fish", "Tortilla", "Cabbage", "Sauce"], description: "Crispy fish with slaw")
                ]),
                Menu(name: "Burritos", description: "Loaded burritos", dishes: [
                    Dish(name: "Chicken Burrito", price: 9.99, calories: 680, ingredients: ["Chicken", "Rice", "Beans", "Cheese", "Salsa"], description: "Large flour tortilla stuffed with chicken"),
                    Dish(name: "Veggie Burrito", price: 8.99, calories: 590, ingredients: ["Rice", "Beans", "Vegetables", "Cheese", "Guacamole"], description: "Healthy vegetarian option")
                ])
            ]
        ),
        Restaurant(
            name: "Bangkok Street",
            cuisine: "Thai",
            rating: 4.7,
            imageName: "fork.knife",
            menus: [
                Menu(name: "Noodles", description: "Traditional Thai noodles", dishes: [
                    Dish(name: "Pad Thai", price: 11.99, calories: 450, ingredients: ["Rice Noodles", "Shrimp", "Peanuts", "Bean Sprouts", "Lime"], description: "Thailand's most famous noodle dish"),
                    Dish(name: "Drunken Noodles", price: 12.99, calories: 520, ingredients: ["Wide Noodles", "Chicken", "Basil", "Chili"], description: "Spicy stir-fried noodles")
                ]),
                Menu(name: "Curries", description: "Aromatic Thai curries", dishes: [
                    Dish(name: "Green Curry", price: 13.99, calories: 480, ingredients: ["Coconut Milk", "Green Curry Paste", "Chicken", "Vegetables"], description: "Spicy coconut curry"),
                    Dish(name: "Massaman Curry", price: 14.99, calories: 540, ingredients: ["Coconut Milk", "Beef", "Peanuts", "Potatoes"], description: "Rich mild curry with peanuts")
                ])
            ]
        )
    ]
}
