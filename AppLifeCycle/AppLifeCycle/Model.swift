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
    
    func refreshCart(){
        lastPhase = "Active"
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
    }
}


