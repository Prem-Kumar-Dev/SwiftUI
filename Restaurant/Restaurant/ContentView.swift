//
//  ContentView.swift
//  Restaurant
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .topLeading) {
                Image(.rasmalai2).resizable().scaledToFit().cornerRadius(30).frame(width: .infinity)
                HStack {
                    Rectangle().fill(.green).frame(width: 25,height: 25).cornerRadius(5).overlay(
                        Circle().fill(.white).frame(width: 10)
                    )
                    Text("Veg").font(.title).foregroundStyle(.green)
                }.offset(x: 10, y: 10)
            }
            VStack(alignment: .leading){
                HStack{
                    Text("Ras Malai").font(.headline)
                    Label("4.3", systemImage: "star.fill").font(.subheadline).foregroundStyle(.yellow).offset(x: 205)
                }
                HStack{
                    Text("Ras Malai is a much-loved, delicious Indian dessert of West Bengali").font(.caption)
                    Button() {
                        print("Added to cart")
                    } label: {
                        Label("Add", systemImage: "cart.badge.plus")
                    }
                    .buttonStyle(.borderedProminent)
                    .accessibilityLabel("Add to cart")
                    .accessibilityHint("Adds butter panner to the cart")
                    .offset(x: 15)
                }
                Text("₹50").font(.headline)
            }.padding()
        }
        .frame(width: 380)
        .background(.secondary.opacity(0.5))
        .cornerRadius(20)
    }
}

#Preview {
    ContentView()
}
