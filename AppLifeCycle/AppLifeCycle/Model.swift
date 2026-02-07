//
//  Model.swift
//  AppLifeCycle
//
//  Created by Prem Kumar on 05/02/26.
//

import Foundation

struct Item: Identifiable{
    let id = UUID()
    var name: String
    var quantity: Int
}

@Observable
class CartModel{
    var items: [Item] = []
    var isPaymentActive = false
    var lastPhase = "None"
    var statusMessage = "App launched"
    
    func refreshCart(){
        lastPhase = "Active"
        statusMessage = "Cart refreshed"
        items = [Item(name: "iPhone", quantity: 2), Item(name: "iPad", quantity: 1)]
    }
    func pausePayment(){
        lastPhase = "Inactive"
        isPaymentActive = false
    }
    func saveCart(){
        lastPhase = "Background"
    }
    func startPayment(){
        isPaymentActive = true
        statusMessage = "Payment Started"
    }
}


