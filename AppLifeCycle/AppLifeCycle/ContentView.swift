//
//  ContentView.swift
//  AppLifeCycle
//
//  Created by Prem Kumar on 05/02/26.
//

import SwiftUI

struct ContentView: View {
    @Environment(CartModel.self) var cart
    var body: some View {
        VStack {
            Text("Smart Car")
                .font(.largeTitle)
            Text("Scene Phase : \(cart.lastPhase)")
                .font(.title2)
            List(cart.items){item in
                HStack{
                    Text(item.name)
                        .font(.title)
                    Text("x\(item.quantity)")
                        .foregroundStyle(.secondary)
                }
            }
            Text(cart.statusMessage)
            Button{
                cart.startPayment()
                
                
            }label: {
                Text("Payment \(cart.isPaymentActive ? "Active" : "Paused")")
                
            }
            .buttonStyle(.borderedProminent)
            
            
        }
        .padding()
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}

#Preview {
    ContentView()
        .environment(CartModel())
}
