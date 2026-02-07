//
//  ViwLifeCycle.swift
//  AppLifeCycle
//
//  Created by Prem Kumar on 05/02/26.
//

import SwiftUI

struct ViwLifeCycle: View {
    @State private var shouldIncreaseFont = false
    @State private var fontSize = 20.0
    @State private var isSelected = false
    let products = ["iPhone", "iMac", "iWatch", "AppleTv"]
    var body: some View {
        VStack{
            Toggle(isOn: $shouldIncreaseFont){
                Text("Change the font")
            }
            .padding()
            
            if shouldIncreaseFont{
                Slider(value: $fontSize, in: 15...100)
                    .padding()
                    .onAppear{
                        print("Slider view appear")
                    }
                    .onDisappear{
                        print("Slider view disappear")
                    }
            }
            
            
            
            NavigationStack{
                List(products, id: \.self){product in
                    Button{
                        isSelected.toggle()
                    }label: {
                        Text(product)
                            .foregroundStyle(.black)
                    }
                    .sheet(isPresented: $isSelected){
                        DetailProduct(product: product)
                    }
                }
            }
        }
    }
}
struct DetailProduct : View {
    let product: String
    var body: some View {
        Text(product)
            .onAppear{
                print("Detail view appear")
            }
            .onDisappear{
                print("Detail view disappear")
            }
        
            .navigationTitle(product)
    }
}

#Preview {
    ViwLifeCycle()
}
